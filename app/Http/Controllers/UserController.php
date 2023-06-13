<?php

namespace App\Http\Controllers;

use Guzzle\Http\Exception\ClientErrorResponseException;


use App\Http\Requests\User as Validate;
use App\Models\User;
use App\Models\Roles as roles;
use App\Models\Team;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use App\Http\Traits\DataTrait;
use App\Models\Supervision;
use GuzzleHttp\Psr7;
use GuzzleHttp\Exception\RequestException;

class UserController extends Controller
{
    use DataTrait;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['users'] = User::where('role','user')->get();
        return view('admin.users.list', $data);
    }

    public function create()
    {
        return view('admin.users.add');
    }
    public function store(Validate $validate)
    {
        if (!empty($validate->file('id_proof'))) {
            $file = $validate->file('id_proof');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/users/documents/id_proof'), $filename);
        }
        $getlastid = User::orderBy('id', 'desc')->select('id', 'code')->first();
        if (!empty($getlastid->code)) {
            $unique_id = str_replace("HR-", "", $getlastid->code);
            $code = "HR-" . ($unique_id + 1);
        } else {
            $code = "HR-100";
        }
        if ($validate->role == 'Manager') {
            $check =  User::where('team_id', $validate->team_id)->where('role', 'Manager')->count();
            if ($check > 0) {
                return response()->json(['code' => 404, 'message' => ucfirst($validate->role) . ' Already assign to this team']);
            }
        }
        // check if the   manager assign already or not
        if (User::insert(array_merge($validate->except('_token', '_method', 'id_proof', 'password'), ['id_proof' => $filename ?? '', 'password' => Hash::make($validate->input('password')), 'code' => $code,'role'=>'user']))) {
            return response()->json(['code' => 200, 'message' =>   ' User  added succusssfully']);
        } else {
            return response()->json(['code' => 400, 'message' => 'Something went wrong']);
        }
    }
    public function assignteam(Request $request)
    {
        // first get the team id then fetch the data of the whole team
        $getteamidifirst =     User::where('id', $request->post('userid'))->first();
        // now get all the team members of theat team
        $manager =  $getteamidifirst->name . '-  Manager';
        // get team name
        $TeamName = Team::where('id', $getteamidifirst->team_id)->first();
        $teammeber = User::where('team_id', $getteamidifirst->team_id)->where('role', '!=', 'Manager')->get();
        $output = ' <div class="row">
        <div class="col-lg-12">
            <div class="card">

                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="verti-sitemap">
                                <ul class="list-unstyled mb-0">
                                    <li class="p-0 parent-title"><a href="javascript: void(0);" class="fw-medium fs-14"><b>Department <b> - ' . $TeamName->name . '</a>
                                    </li>
                                    <li>
                                        <div class="first-list">

                                            <div class="list-wrap">
                                            <div class="row">
                                                <div class="col-md-8 col-8">
                                                    <a href="javascript: void(0);" class="fw-medium text-primary">' . $manager . ' </a>
                                                </div>
                                                <div class="col-md-4 col-4">
                                                    <div class="mt-2">';
        //  <button  class="btn  btn-primary btn-sm assinged" id="assignTeamMemberId_' . $request->post('userid') . '"  onclick="assignthisLead(' . $request->post('userid') . ',' . $getteamidifirst->team_id . ' )" > Assign</button>
        $output .= ' </div>
                                            </div>
                                            </div>
                                            <ul class="second-list list-unstyled">';
        if (count($teammeber) > 0) {
            foreach ($teammeber as $teamlist) {
                $output .= '

                                                            <li>

                                                                <div class="row">
                                                                   <div class="col-md-8 col-8">
                                                                       <a href="javascript: void(0);">' . $teamlist->name . '- ' . $teamlist->role . '</a>
                                                                   </div>

                                                                </div>
                                                            </li>';
            }
        } else {
            $output .= '

                                                        <li>
                                                            <a href="javascript: void(0);"> No Team member assigned  Yet</a>
                                                        </li>';
        }
        $output .= '
                        </ul>
                    </div>


                </li>
                </ul>
                </div>
                </div>
                <!--end col-->
                </div>
                <!--end row-->
                </div>
                <!--end card-body-->
                </div>
                <!--end card-->
                </div>
                <!--end col-->
                </div>';
        echo  $output;
    }
    public function edit(Request $request)
    {
        $data['users'] = User::find($request->user);
        return view('admin.users.edit', $data);
    }
    public function update(Validate $validate)
    {
        if (!empty($validate->file('id_proof'))) {
            $file = $validate->file('id_proof');
            $filename = time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('uploads/users/documents/idproof'), $filename);
        } else {
            $getimage =  User::where('id', $validate->user)->get();
            $filename = $getimage[0]->id_proof;
        }
        if (User::where('id', $validate->user)->update(array_merge($validate->except('_token', '_method', 'id_proof'), ['id_proof' => $filename]))) {
            return response()->json(['code' => 200, 'message' => ucfirst($validate->role) . ' Updated succusssfully']);
        } else {
            return response()->json(['code' => 400, 'message' => 'Something went wrong']);
        }
    }
    public  function allotMemberToSupervisior(Request $request)
    {
        // first get the userid and then
        // return $request->all();
        $matchThese = ['subordinate_id' => $request->id,];
        $query = Supervision::updateOrCreate($matchThese, ['supervisor_id' =>   $request->flag, 'subordinate_id' =>  $request->id]);
        if ($query) {
            return response()->json(['code' => '200', 'message' => '<span style="color:green">Assigned Successfully <span>']);
        } else {
            return response()->json(['code' => '400', 'message' => '<span style="color:red">Something went wrong<span>']);
        }
    }
    public static function changepassworddiv(Request $request)
    {
        $data['id'] = $request->id;
        $data['table'] = $request->table;
        return view('admin/users/change_password', $data);
    }
    public function callnow(Request $request)
    {
        $client = new \GuzzleHttp\Client();
        $agent_number =   User::where('id', getlogindetail('id'))->first();
        if ($agent_number->phone != '') {
            $client = new \GuzzleHttp\Client();
            $number = "\"$request->number\"";
            //  $number = "8595529873";
            $agent = "\"$agent_number->phone\"";
            // $agent ="9652120761279";
            // +91836822109


            try {
                $response = $client->request('POST', 'https://api.servetel.in/v1/click_to_call', [
                    'body' => '{"destination_number":"8595529873","agent_number":' . $agent . '}',
                    'headers' => [
                        'Authorization' => 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjExNDIyMiwiaXNzIjoiaHR0cHM6XC9cL2N1c3RvbWVyLnNlcnZldGVsLmluXC90b2tlblwvZ2VuZXJhdGUiLCJpYXQiOjE2Njk3MjE1NTgsImV4cCI6MTk2OTcyMTU1OCwibmJmIjoxNjY5NzIxNTU4LCJqdGkiOiI4aENQWTNsMlhXM1FLQmZJIn0.gcTBpzhnrOYJPfuyzTrzpN5z54NpPisYnBS6TLcNjX0',
                        'accept' => 'application/json',
                        'content-type' => 'application/json',
                    ],

                ]);
                return response(['code' => 200, 'error' => 'Successfully called']);
            } catch (RequestException $e) {
                return  $e->getResponse()->getStatusCode(true);
                if ($e->getResponse()->getStatusCode(true) == 503) {
                    return  response(['code' => 403, 'error' => 'Call missed by agent or originate failed']);
                } else {
                    return  response(['code' => 403, 'error' => 'Something Went wrong']);
                }
            }

            // try {
            //     $response = $request->send();
            // } catch (ClientErrorResponseException $exception) {
            //     $responseBody = $exception->getResponse()->getBody(true);
            // }



            // if ($response) {
            //     $codestatus = $response->getBody();
            //     $statusss =  json_decode($codestatus);

            //     if (isset($statusss->success) && $statusss->success  == true) {
            //         return response()->json(['code' => 200, "message" => $statusss->result->message]);
            //     } else {
            //         return response(['code' => 403, 'error' => 'Something Went wrong']);
            //     }
            // }
        } else {
            return response(['code' => 403, 'error' => 'Agent Number Is not added yet']);
        }
        // $number = "\"$request->number\"";

    }
    public static function updatepassword(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'rowid' => 'required',
            'table' => 'required',
            'new_password' => 'required|min:6',
            'confirm_password' => 'required|min:6',
        ]);
        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {
            if ($request->new_password == $request->confirm_password) {
                $savedata['password'] = Hash::make($request->new_password);
                $query = DB::table($request->table)->where('id', $request->rowid)->update($savedata);
                if ($query) {
                    return response()->json(['code' => 200, 'message' => 'Password Changed Successfully']);
                } else {
                    return response()->json(['code' => 400, 'message' => 'Something went wrong']);
                }
            } else {
                return response()->json(['code' => 400, 'message' => 'Password & Confirm Password must be same']);
            }
        }
    }
    public function particularTeamMember(Request $request)
    {
           $data['userrole'] = str::headline($request->role);
        $data['teamMembers'] =  User::where('team_id', $request->teamId)->where('role', str::headline($request->role))->get();
        switch (str::headline($request->role)) {

            case ('Business Development Manager'):
            case ('Retail Associate'):
            case ('Senior Retail Associate'):
                $subordinate = 'Manager';
                break;
            case ('Quality Check'):
                $subordinate = 'Retail Associate';
                break;
            case ('Manager'):
                $subordinate = '';
                break;
            case ('Car Jockey'):
            case ('Price Discovery'):
                $subordinate = 'Quality Check';
                break;


            case ('Key Account Manager'):
                $subordinate = 'Business Development Manager';
                break;
        }
        if (str::headline($request->role) == 'Manager') {
            $data['reportsTo']  =   User::where('team_id', $request->teamId)->where('role', '!=', 'Manager')->get();
        } else {
            $data['reportsTo']  = $this->getConditionalData(new User, 'role', $subordinate, 'team_id', $request->teamId);
        }

        return  view('admin.technician.team-members', $data);
    }
}

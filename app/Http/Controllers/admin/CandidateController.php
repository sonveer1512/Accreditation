<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Traits\DataTrait;
use App\Imports\PlayersImport;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\Candidate;
use App\Models\Category;
use App\Models\CategoryModel;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Validator;

class CandidateController extends Controller
{

    use DataTrait;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['players'] = Candidate::all();
        return view('admin.candidates.list', $data);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.candidates.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'uid' => 'required',
            'first_name' => 'required',
            'email' => 'required'
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {

            $data['uid'] = $request->uid;
            $data['first_name'] = $request->first_name;
            $data['last_name'] = $request->last_name;
            $data['accreditation_name'] = $request->accreditation_name;
            $data['dob'] = $request->dob;
            $data['address'] = $request->address;
            $data['email'] = $request->email;
            $data['mobile'] = $request->mobile;
            $data['gender'] = $request->gender;
            $data['father_name'] = $request->father_name;
            $data['mother_name'] = $request->mother_name;
            $data['spouse_name'] = $request->spouse_name;
            $data['tshirtsize'] = $request->tshirtsize;
            $data['organisation'] = $request->organisation;
            $data['designation'] = $request->designation;
            $data['org_address'] = $request->org_address;
            $data['org_email_id'] = $request->org_email_id;
            $data['org_phone'] = $request->org_phone;
            $data['terms'] = $request->terms;

            if (!empty($request->file('player_image'))) {
                $file = $request->file('player_image');
                date_default_timezone_set('Asia/Kolkata');

                $filename = date('YmdHi') . $file->getClientOriginalName();
                $file->move(public_path('uploads/player'), $filename);
                $savedata['icon'] = $filename;
            }


            $insert_data = CategoryModel::insert($data);

            if ($insert_data) {
                return response()->json(['code' => 200, 'message' => 'Category Added']);
            } else {
                return response()->json(['code' => 201, 'message' => 'Something Went Wrong']);
            }
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id)
    {
        $data['candidates'] = Candidate::where('id', $id)->first();
        return view('admin.candidates.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            '*' => 'required',
        ]);

        if (Candidate::where('id', $id)->update($request->except('_token', '_method'))) {
            return response()->json(['code' => 200, 'message' =>  '  Candidate Updated succusssfully']);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }






    public function import()
    {
        $data = Excel::toArray([], request()->file('file'));

        if (!empty($data)) {
            foreach ($data[0] as $key => $row) {

                if ($key >= 1) {

                    if (!Candidate::where('uid', $row[1])->first()) {

                        // $url = $row[10];
                        // $info = pathinfo($url);
                        // $contents = file_get_contents($url);
                        // $file = "uploads/player/".$info['basename'];
                        // file_put_contents($file, $contents);
                        // $uploaded_file = new UploadedFile($file, $info['basename']);

                        $data = [
                            'uid'  => $row['1'],
                            'first_name' => $row['2'],
                            'dob' => $row['3'],
                            'gender' => $row['4'],
                            'father_name' => $row['5'],
                            'state' => $row['6'],
                            'sport' => $row['7'],
                            'event_name' => $row['8'],
                            'category_name' => $row['9'],
                            
                        ];

                        // 'image' => $file,

                        Candidate::insert($data);
                    }
                }
            }
        }

        return response()->json(['code' => 200, 'message' =>  'Imported successfully']);
    }


    public function view(Request $request)
    {
        $data['item'] = Candidate::where('id', $request->id)->first();
        return view('admin.candidates.profile', $data);
    }

    public function back(Request $request)
    {
        $data['item'] = CategoryModel::where('id', $request->id)->first();
        return view('admin.candidates.back', $data);
    }
}

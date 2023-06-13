<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\AccessCode;
use App\Models\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;


class StaffController extends Controller
{

    public function index()
    {
        $data['access_code'] = AccessCode::orderBy('id', 'desc')->get();
        return view('admin.staff.add', $data);
    }


    public function addstaff(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'staff_email' => 'required|max:255',
            'staff_password' => 'required|min:6',
            'staff_name' => 'required|min:2',
            'access_code' => 'required',
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {

            $savedata['email'] = $request->staff_email;
            $exist = Auth::checkemail($savedata);

            if (empty($exist)) {

                $savedata['password'] = Hash::make($request->staff_password);
                $savedata['name'] = $request->staff_name;
                $savedata['phone'] = $request->staff_mob;
                $savedata['email'] = $request->staff_email;
                $savedata['code'] = $request->access_code;
                if (!empty($request->file('staff_image'))) {
                    $file = $request->file('staff_image');

                    date_default_timezone_set('Asia/Kolkata');
                    $filename = date('YmdHi') . $file->getClientOriginalName();
                    $file->move(public_path('uploads/staff'), $filename);
                    $savedata['image'] = $filename;
                }


                $query = DB::table('users')->insertGetId($savedata);

                if ($query) {
                    return response()->json(['code' => 200, 'message' => 'Staff Added Successfully']);
                } else {
                    return response()->json(['code' => 400, 'message' => 'Something went wrong']);
                }
            } else {
                return response()->json(['code' => 400, 'message' => 'Email Address already exist']);
            }
        }
    }



    public function getstaffside($id)
    {

        $det = Auth::listwhere($id);

        $data['id']             = $det->id ?? '';
        $data['vendor_email']   = $det->vendor_email ?? '';
        $data['vendor_name']    = $det->vendor_name ?? '';
        $data['vendor_phone']   = $det->vendor_phone ?? '';
        $data['vendor_staff_role'] = $det->vendor_staff_role ?? '';
        $data['vendor_staff_image'] = $det->vendor_staff_image ?? '';

        $access = DB::table('vendor_staff_access as vsa')->join('vendor_sidebar as vs', 'vs.sidebar_id', '=', 'vsa.module')->where('vsa.vendor_staff_id', $id)->select('*')->get();

        $modules = array();
        if (!empty($access)) {
            foreach ($access as $value) {
                array_push($modules, array(
                    'vendor_staff_id' => $value->vendor_staff_id,
                    'module' => $value->sidebar_name,
                    'read' => $value->read,
                    'write_permission' => $value->write_permission
                ));
            }
        }

        $data['modules'] = $modules;
        return view('admin/staff/staffside', $data);
    }



    public function geteditdetails($id)
    {
        $det = Auth::listwhere($id);

        $data['id']             = $det->id ?? '';
        $data['vendor_email']   = $det->vendor_email ?? '';
        $data['vendor_name']    = $det->vendor_name ?? '';
        $data['vendor_phone']   = $det->vendor_phone ?? '';
        $data['vendor_staff_role'] = $det->vendor_staff_role ?? '';
        $data['vendor_staff_image'] = $det->vendor_staff_image ?? '';

        $access = DB::table('vendor_staff_access as vsa')->join('vendor_sidebar as vs', 'vs.sidebar_id', '=', 'vsa.module')->where('vsa.vendor_staff_id', $id)->select('*')->get();

        $modules = array();
        if (!empty($access)) {
            foreach ($access as $value) {
                array_push($modules, array(
                    'sidebar_id' => $value->sidebar_id,
                    'module' => $value->sidebar_name,
                    'read' => $value->read,
                    'write_permission' => $value->write_permission
                ));
            }
        }

        $data['modules'] = $modules;
        return view('admin/staff/edit', $data);
    }




    public function editstaffdetails(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'rowid' => 'required',
            'staff_email' => 'required|max:255',
            'staff_name' => 'required|min:2',
            'staff_role' => 'required',
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {

            $savedata['vendor_email'] = $request->staff_email;
            $exist = Auth::checkemail($request->staff_email);

            if (!empty($exist)) {
                $savedata['vendor_name'] = $request->staff_name;
                $savedata['vendor_staff_role'] = $request->staff_role;
                $savedata['vendor_phone'] = $request->staff_mob;

                if (!empty($request->file('staff_image'))) {
                    $file = $request->file('staff_image');

                    date_default_timezone_set('Asia/Kolkata');
                    $filename = date('YmdHi') . $file->getClientOriginalName();
                    $file->move(public_path('uploads/staff'), $filename);
                    $savedata['vendor_staff_image'] = $filename;
                }

                $query = DB::table('vendor')->where('id', $request->rowid)->update($savedata);

                DB::table('vendor_staff_access')->where('vendor_staff_id', $request->rowid)->delete();

                if ($exist) {
                    $sidebar_name = $request->sidebar_name;
                    $permdata['vendor_staff_id'] = $request->rowid;

                    if (!empty($sidebar_name)) {
                        for ($i = 0; $i < count($sidebar_name); $i++) {
                            $permdata['read'] = $permdata['write_permission'] = 0;

                            if (!empty($request->input('read' . $sidebar_name[$i]))) {
                                $permdata['read'] = 1;
                            }
                            if (!empty($request->input('write' . $sidebar_name[$i]))) {
                                $permdata['write_permission'] = 1;
                            }
                            $permdata['module'] = $sidebar_name[$i];

                            DB::table('vendor_staff_access')->insert($permdata);
                        }
                    }

                    return response()->json(['code' => 200, 'message' => 'Staff Added Successfully']);
                } else {
                    return response()->json(['code' => 400, 'message' => 'Something went wrong']);
                }
            } else {
                return response()->json(['code' => 400, 'message' => 'Email Address not found']);
            }
        }
    }



    public function changepassworddiv($id, $table)
    {
        $data['id'] = $id;
        $data['table'] = $table;

        return view('admin/staff/change_password', $data);
    }



    public function updatepassword(Request $request)
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

                $savedata['vendor_password'] = Hash::make($request->staff_name);
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




    public function delete(Request $request) {

        $validate = Validator::make($request->all(), [
            'id' => 'required',
            'table' => 'required',
            'type' => 'required',
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 400, 'message' => 'Something went wrong']);
        } else {

            if($request->type == 'activate') {
                $savedata['flag'] = 0;
                $key = 'Activated';
            }else if($request->type == 'deactivate') {
                $savedata['flag'] = 1;
                $key = 'Deactivated';

            }else if($request->type == 'delete') {
                $savedata['flag'] = 2;
                $key = 'Deleted';

            }else{
                return response()->json(['code' => 400, 'message' => 'Something went wrong']);
            }

            $query = DB::table($request->table)->where('id', $request->id)->update($savedata);

            if ($query) {
                return response()->json(['code' => 200, 'message' => 'Data '.$key.' Successfully']);
            } else {
                return response()->json(['code' => 400, 'message' => 'Something went wrong']);
            }
        }
    }




}

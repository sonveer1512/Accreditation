<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\SportModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;




class SportController extends Controller
{
    public function index()
    {
    $data['sport_list'] = SportModel::where('flag', '!=', '2')->get();
    return view('admin.sport.list', $data);
    }

    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required'
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {

            if (SportModel::insert(array_merge($request->except('_token')))) {
                return response()->json(['code' => 200, 'message' => 'Sport Added Successfully']);
            } else {
                return response()->json(['code' => 400, 'message' => 'Something went wrong']);
            }
        
        }    
    }

    public function edit($id)
    {
        $data['item'] = SportModel::where('id', $id)->first();
        return view('admin/sport/edit', $data);
    }

    public function update(Request $request)
    {
        $id = $request->id;
        $data['name'] = $request->name;
        $update_data = SportModel::where('id', $id)->update($data);
        if ($update_data) {
            return response()->json(['code' => 200, 'message' => 'Sport Updated']);
        } else {
            return response()->json(['code' => 400, 'message' => 'Something Went Wrong']);
        }
    }
}

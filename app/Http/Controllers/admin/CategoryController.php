<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\AccessCode;
use App\Models\CategoryModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;


class CategoryController extends Controller
{
    public function index()
    {
        $data['cat_list'] = CategoryModel::all();
        $data['access'] = AccessCode::all();
        return view('admin.category.list', $data);
    }

    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required',
            'short_name' => 'required',
            'color' => 'required',
            'access' => 'required',
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {
            $name = $request->name;

            $check = CategoryModel::where('name', $name)->first();
            if ($check) {
                return response()->json(['code' => 402, 'message' => 'Category Already Exist']);
            } else {

                $data['name'] = $request->name;
                $data['color'] = $request->color;
                $data['short_name'] = $request->short_name;
                $data['access'] = json_encode($request->access);

                $insert_data = CategoryModel::insert($data);

                if ($insert_data) {
                    return response()->json(['code' => 200, 'message' => 'Category Added']);
                } else {
                    return response()->json(['code' => 201, 'message' => 'Something Went Wrong']);
                }
            }
        }
    }


    public function edit(Request $request)
    {
        $item = CategoryModel::where('id', $request->id)->first();
        $access = AccessCode::all();
        return view('admin.category.edit', compact('item', 'access'));
    }



    public function update(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'name' => 'required',
            'short_name' => 'required',
            'color' => 'required',
            'access' => 'required',
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {

            $data['name'] = $request->name;
            $data['color'] = $request->color;
            $data['short_name'] = $request->short_name;
            $data['access'] = json_encode($request->access);

            $insert_data = CategoryModel::where('id', $request->id)->update($data);

            return response()->json(['code' => 200, 'message' => 'Category Update']);
        }
    }
}

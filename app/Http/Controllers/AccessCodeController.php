<?php

namespace App\Http\Controllers;

use App\Models\AccessCode;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AccessCodeController extends Controller
{
    public function index()
    {
        $category = AccessCode::orderBy('id', 'desc')->get();
        return view('access.list', compact('category'));
    }


    public function store(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'title' => 'required|unique:access_code',
            'image' => 'required',
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {
            $savedata['title'] = $request->title ?? '';

            if (!empty($request->file('image'))) {
                $file = $request->file('image');
                date_default_timezone_set('Asia/Kolkata');

                $filename = date('YmdHi') . $file->getClientOriginalName();
                $file->move(public_path('uploads/access'), $filename);
                $savedata['icon'] = $filename;
            }

            $saved = AccessCode::insertGetId($savedata);

            if ($saved) {
                return response()->json(['message' => 'Access Code Added Successfully', 'code' => 200]);
            } else {
                return response()->json(['message' => 'Something went wrong', 'code' => 400]);
            }
        }
    }


    public function edit(Request $request)
    {
        $item = AccessCode::where('id', $request->id)->first();
        return view('access.edit', compact('item'));
    }

    public function update(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'title' => 'required',
        ]);

        if ($validate->fails()) {
            return response()->json(['code' => 401, 'message' => $validate->errors()->toArray()]);
        } else {
            $data['title'] = $request->title ?? '';

            if (!empty($request->file('image'))) {
                $file = $request->file('image');
                date_default_timezone_set('Asia/Kolkata');

                $filename = date('YmdHi') . $file->getClientOriginalName();
                $file->move(public_path('uploads/access'), $filename);
                $savedata['icon'] = $filename;
            }

            $saved = AccessCode::where('id', $request->rowid)->update($data);

            if ($saved) {
                return response()->json(['message' => 'Access Code Updated Successfully', 'code' => 200]);
            } else {
                return response()->json(['message' => 'Something went wrong', 'code' => 400]);
            }
        }
    }
}

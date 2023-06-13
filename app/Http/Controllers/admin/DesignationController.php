<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\CategoryModel;
use App\Models\DesignationModel;
use Illuminate\Http\Request;


class DesignationController extends Controller
{
    public function index()
    {
        $data['category'] = CategoryModel::where('flag', '!=', '2')->get();
        $data['designation_list'] = DesignationModel::with('category,category_sort_name')->get();
        return view('admin.designation.list', $data);
    }
}

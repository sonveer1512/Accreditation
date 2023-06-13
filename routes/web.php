<?php

use App\Http\Controllers\AccessCodeController;
use App\Http\Controllers\admin\CandidateController;
use App\Http\Controllers\admin\CategoryController;
use App\Http\Controllers\admin\DashboardController;
use App\Http\Controllers\admin\DesignationController;
use App\Http\Controllers\admin\IndexController;
use App\Http\Controllers\admin\SportController;
use App\Http\Controllers\admin\StaffController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\UserController;
use App\Models\CategoryModel;
use App\Models\DesignationModel;
use Illuminate\Support\Facades\Route;


Route::get('/', [IndexController::class, 'index']);
// admin panel routes
Route::put('login', [IndexController::class, 'index']);
Route::post('/auth', [IndexController::class, 'check']);
Route::get('/admins', [IndexController::class, 'index']);
Route::group(['middleware' => 'auth', 'prefix' => '/admin'], function () {
    Route::get('/dashboard', [DashboardController::class, 'index']);
    Route::post('/customer/updatepassword', [StaffController::class, 'updatepassword']);

    Route::resource('candidates', CandidateController::class);
    Route::post('/candidate/import', [CandidateController::class, 'import']);
    Route::get('/candidates/view/{id}', [CandidateController::class, 'view']);
    Route::get('/category/back/{id}', [CandidateController::class, 'back']);

    // Staff Routes
    Route::group(['prefix' => '/color'], function () {
        Route::get('', [ColorController::class, 'index']);
        Route::post('/store', [ColorController::class, 'store']);
        Route::get('/edit/{id}', [ColorController::class, 'edit']);
        Route::post('/update', [ColorController::class, 'update']);
    });

    Route::group(['prefix' => '/sport'], function () {
        Route::get('', [SportController::class, 'index']);
        Route::post('/store', [SportController::class, 'store']);
        Route::get('/edit/{id}', [SportController::class, 'edit']);
        Route::post('/update', [SportController::class, 'update']);
    });

    Route::group(['prefix' => '/category'], function () {
        Route::get('', [CategoryController::class, 'index']);
        Route::post('/store', [CategoryController::class, 'store']);
        Route::get('/edit/{id}', [CategoryController::class, 'edit']);
        Route::post('/update', [CategoryController::class, 'update']);
    });

    Route::group(['prefix' => '/designation'], function () {
        Route::get('', [DesignationController::class, 'index']);
        Route::post('/store', [DesignationController::class, 'store']);
        Route::get('/edit/{id}', [DesignationController::class, 'edit']);
        Route::post('/update', [DesignationController::class, 'update']);
    });

    Route::group(['prefix' => '/staff'], function () {
        Route::get('', [StaffController::class, 'index']);
        Route::post('/addstaff', [StaffController::class, 'addstaff']);
        Route::post('/editstaffdetails', [StaffController::class, 'editstaffdetails']);
        Route::get('/getstaffside/{id}', [StaffController::class, 'getstaffside']);
        Route::get('/geteditdetails/{id}', [StaffController::class, 'geteditdetails']);
        Route::get('/edit', [StaffController::class, 'edit']);
        Route::post('/update', [StaffController::class, 'updatestaff']);
        Route::post('/updatepassword', [StaffController::class, 'updatepassword']);
        Route::post('/delete', [StaffController::class, 'delete']);
        Route::get('changepassworddiv/{id}/{table}', [StaffController::class, 'changepassworddiv']);
    });


    Route::group(['prefix' => '/access_code'], function () {
        Route::get('', [AccessCodeController::class, 'index']);
        Route::get('/create', [AccessCodeController::class, 'create']);
        Route::post('/store', [AccessCodeController::class, 'store']);
        Route::get('/edit/{id}', [AccessCodeController::class, 'edit']);
        Route::post('/update', [AccessCodeController::class, 'update']);
    });


    Route::get('importExportView', [CandidateController::class, 'importExportView']);
    Route::get('export', [CandidateController::class, 'export'])->name('export');
    

});
Route::get('/admins/logout', function () {
    session()->flush();
    return redirect('/admins');
});

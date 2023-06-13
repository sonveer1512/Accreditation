<?php

use App\Http\Controllers\admin\AssignDealerController;
use Illuminate\Support\Facades\Route;

Route::get('/assign',[AssignDealerController::class,'index']);

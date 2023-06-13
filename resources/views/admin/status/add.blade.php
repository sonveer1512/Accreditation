@extends('admin.layout')
@section('dashboard','brands')

@section('content')

<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.css">
<script src="https://cdn.jsdelivr.net/gh/bbbootstrap/libraries@main/choices.min.js"></script>

<style>
    .choices[data-type*=select-multiple] .choices__list--dropdown,
    .choices[data-type*=text] .choices__list--dropdown {
        padding: 20px;

    }
</style>

<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">Status</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Create</a></li>
                    <li class="breadcrumb-item active">Status</li>
                </ol>
            </div>

        </div>
    </div>
</div>
<!-- end page title -->


<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header align-items-center d-flex">
                <h4 class="card-title mb-0 flex-grow-1">Create New Status</h4>
                <div class="flex-shrink-0">
                    <div class="form-check form-switch form-switch-right form-switch-md">
                        <a href="{{url('admin/status')}}" class="btn btn-success btn-sm">Back</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="live-preview">
                    <form action="{{route('status.store')}}" method="post" enctype="multipart/form-data">
                        @csrf()
                        <div class="row ">
                            <div class="col-xxl-6 col-md-5">
                                <label for="teams" class="form-label">Source Name</label>
                                <input type="text" name="name" placeholder="Enter Source Name" class="form-control" id="teams">
                                @error('name')
                                <div class="text-danger">{{$message}}</div>
                                @enderror()
                            </div>
                            <!-- <div class="col-xxl-3 col-md-5">
                                <label for="brands" class="form-label">Brand Image</label>
                                <input type="file" name="image"  class="form-control" id="brands">
                                @error('image')
                            <div class="text-danger">{{$message}}</div>
                        @enderror()
                        </div>
                      -->
                            <div class="col-xxl-3 col-md-2 mt-4 ">

                                <input type="submit" value="submit" class="btn btn-primary btn-sm">

                            </div>
                            <!--end col-->


                            <!--end col-->
                        </div>
                    </form>
                    <!--end row-->
                </div>

            </div>
        </div>
    </div>
    <!--end col-->
</div>
<!--end row-->


@endsection()
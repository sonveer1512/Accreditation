@extends('admin.layout')
@section('teams','active')

@section('content')


<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">Sources</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Sources</a></li>
                    <li class="breadcrumb-item active">Sources</li>
                </ol>
            </div>

        </div>
    </div>
</div>
<!-- end page title -->

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <div class="row g-2">
                    <div class="col-sm-4">
                        <h5 class="card-title mb-0">All Sources</h5>
                    </div>

                    <div class="col-sm-auto ms-auto">
                        <div class="list-grid-nav gap-1">
                            <a href="{{ url('admin/sources/create')}}" class="btn btn-success btn-sm"><i class="ri-add-fill me-1 align-bottom"></i> Source</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table id="example" class="table table-bordered dt-responsive nowrap table-striped align-middle" style="width:100%">
                    <thead>
                        <tr>
                            <th data-ordering="false">S.no.</th>
                            <th data-ordering="false">Name</th>
                            <th data-ordering="false">Created At</th>
                            <th data-ordering="false">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($sources as $list)
                        <tr>
                            <td>{{ $loop->index+1 }}</td>
                           
                            <td>{{ $list->name}}</td>
                            <td>{{ $list->created_at}}</td>
                            <td>
                                <a class="btn btn-danger btn-sm" data-bs-target="#deletepopup" data-bs-toggle="modal" onclick="deletepopup({{ $list->id }},'sources','delete')" >
                                <i class="ri-delete-bin-5-line"></i>
                                </a>


                            </td>
                        </tr>
                        @endforeach()

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--end col-->
</div>
<!--end row-->

@include('admin.deactivate')



@endsection()
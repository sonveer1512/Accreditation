@extends('admin.layout')

@section('content')

<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css">



<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">All Players</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">All Players</a></li>
                    <li class="breadcrumb-item active">All Players</li>
                </ol>
            </div>

        </div>
    </div>
</div>
<!-- end page title -->

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4">
                        <h5 class="card-title mb-0">Import Players</h5>
                        <br>
                        <form class="importexcel" method="POST" enctype="multipart/form-data">
                            @csrf
                            <input type="file" name="file" class="form-control">
                            <br>
                            <button class="btn btn-success">Import User Data</button>

                        </form>
                    </div>
                    <div class="col-md-8">
                        <br><br>
                        <a class="btn btn-primary" href="{{ asset('uploads/excel.xlsx') }}" download>Sample Excel</a>
                        <!-- <a class="btn btn-primary" href="{{ route('export') }}">Export User Data</a> -->
                    </div>
                </div>

            </div>
        </div>
        <div class="card">
            <div class="card-header">
                <div class="row g-2">
                    <div class="col-sm-4">
                        <h5 class="card-title mb-0">All Players</h5>
                    </div>

                    <div class="col-sm-auto ms-auto">
                        <div class="list-grid-nav gap-1">
                            <a href="{{ url('admin/candidates/create')}}" class="btn btn-success btn-sm"><i class="ri-add-fill me-1 align-bottom"></i>Add New Candidate</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table id="example" class="table table-bordered dt-responsive nowrap table-striped align-middle" style="width:100%">
                    <thead>
                        <tr>
                            <th data-ordering="false">S.no.</th>
                            <th data-ordering="false">Uid</th>
                            <th data-ordering="false">Player Name</th>
                            <th data-ordering="false">Date of Birth</th>
                            <th data-ordering="false">Gender</th>
                            <th data-ordering="false">Father Full Name</th>
                            <th data-ordering="false">Nominated State Name</th>
                            <th data-ordering="false">Sport Name</th>
                            <th data-ordering="false">Event Name</th>
                            <th data-ordering="false">Category Name</th>
                            <th data-ordering="false">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if(!empty($players))
                        @foreach($players as $list)
                        <tr>
                            <td>{{ $loop->index+1 }}</td>
                            <td>{{$list->uid}}</td>
                            <td>{{$list->first_name}}</td>
                            <td>{{$list->dob}}</td>
                            <td>{{$list->gender}}</td>
                            <td>{{$list->father_name}}</td>
                            <td>{{$list->state}}</td>
                            <td>{{$list->sport}}</td>
                            <td>{{$list->event_name}}</td>
                            <td>{{$list->category_name}}</td>
                            <td>
                                <a href="{{ url('admin/candidates/view/'.$list->id) }}" class="btn btn-primary btn-sm">View</a>
                            </td>
                        </tr>
                        @endforeach()
                        @endif()

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--end col-->
</div>
<!--end row-->

@include('admin.deactivate')
<div class="modal fade zoomIn" id="change_password" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-soft-info p-3">
                <h5 class="modal-title" id="myModalLabel">Update Password</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btn-close"></button>
            </div>
            <div class="modal-body">
                <form method="post" id="changepassworddata">
                    <span id="changepassworddiv"></span>
                    @csrf()
                    @method('post')

                    <div class="d-flex gap-2 justify-content-center mt-4 mb-2">
                        <button type="button" class="btn w-sm btn-light" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn w-sm btn-success " id="delete-record">Update Password</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script>
    function showchangepasswordpopup(id, table) {
        $.ajax({
            url: "{{ url('admin/users/changepassworddiv')}}" + "/" + id + '/' + table,
            type: 'get',
            cache: true,
            contentType: false,
            processData: false,
            success: function(result) {
                $("#changepassworddiv").html(result);
            },
        })
    }
    $(document).on('submit', '#changepassworddata', function(ev) {
        $('.error').html('');

        ev.preventDefault(); // Prevent browers default submit.
        var formData = new FormData(this);
        var error = false;

        if (error == false) {
            $.ajax({
                url: "{{ url('admin/users/updatepassword') }} ",
                type: 'post',
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend: function() {
                    $(".hstackloader").html('<lord-icon src="https://cdn.lordicon.com/dpinvufc.json" trigger="loop" colors="primary:#4bb543,secondary:#4bb543" style="width:50px;"> </lord-icon>');
                    $(".hstack").css('display', 'none');
                    $(".error").text('');
                },
                success: function(result) {
                    if (result.code == 200) {
                        swal(result.message, ' ', 'success');
                        reloadpage();
                    } else if (result.code == 401) {
                        $.each(result.message, function(prefix, val) {
                            $('#' + prefix + '_error').text(val[0]);
                        });
                        swal(result.message, ' ', 'error');
                    } else {
                        swal(result.message, ' ', 'error');
                    }
                },
                error: function(xhr) {
                    $(".hstack").css('display', 'flex');
                },
                complete: function() {
                    $(".hstack").css('display', 'flex');
                    $(".hstackloader").text('');
                },
            })
        }
    })
</script>


<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap5.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.html5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>

<script src="{{ asset('admin/js/pages/datatables.init.js') }}"></script>


<script>
    //  add modal
    $(document).on('submit', '.importexcel', function(ev) {
        $('.error').html('');
        ev.preventDefault(); // Prevent browers default submit.
        var formData = new FormData(this);
        var error = false;

        if (error == false) {
            $.ajax({
                url: "{{ url('admin/candidate/import') }}",
                type: 'post',
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                success: function(result) {
                    if (result.code == 200) {
                        swal(result.message, ' ', 'success');
                        window.location.reload();
                    } else {
                        swal(result.message, ' ', 'error');
                    }
                },
            })
        }
    })
</script>


@endsection()
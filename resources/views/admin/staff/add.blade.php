@extends('admin.layout')

@section('content')

<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">Staff Management</h4>

            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">User Management</a></li>
                    <li class="breadcrumb-item active">Staff Management</li>
                </ol>
            </div>

        </div>
    </div>
</div>

<!-- end page title -->

<div class="card">
    <div class="card-body">
        <div class="row g-2">
            <div class="col-sm-4">
                <div class="search-box">
                    <input type="text" class="form-control" placeholder="Search for name, tasks, projects or something...">
                    <i class="ri-search-line search-icon"></i>
                </div>
            </div>

            <div class="col-sm-auto ms-auto">
                <div class="list-grid-nav gap-1">
                    <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addmembers"><i class="ri-add-fill me-1 align-bottom"></i> Add Staff</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="offcanvas offcanvas-end border-0" tabindex="-1" id="offcanvasExample" class="sidedetails"></div>

<div class="row">
    <div class="col-lg-12">
        <div class="team-list grid-view-filter row" id="staffdata">
            @php if (!empty($staff)) { foreach ($staff as $value) { @endphp
            <div class="col">
                <div class="card team-box">
                    <div class="team-cover">
                        <img src="{{asset('admin/images/small/img-9.jpg')}}" alt="" class="img-fluid" />
                    </div>

                    <div class="card-body p-4">
                        <div class="row align-items-center team-row">
                            <div class="col team-settings">
                                <div class="row">
                                    <div class="col"></div>
                                    <div class="col text-end dropdown">
                                        <a href="javascript:void(0);" id="dropdownMenuLink2" data-bs-toggle="dropdown" aria-expanded="false">
                                            <i class="ri-more-fill fs-17"></i>
                                        </a>
                                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuLink2">
                                            <li><a class="dropdown-item" data-bs-toggle="offcanvas" onclick="showuserdetails(<?= $value->id ?>)" href="#offcanvasExample" aria-controls="offcanvasExample"><i class="ri-eye-line me-2 align-middle"></i>View</a></li>


                                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#editmodal" onclick="showeditmodulediv(<?= $value->id ?>)" aria-controls="editmodal"><i class="ri-edit-line editmodal1 me-2 align-middle " data-id="<?= $value->id ?>"></i>Edit</a></li>
                                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#change_password" onclick="showchangepasswordpopup(<?= $value->id ?>, 'users')" aria-controls="editmodal"><i class="ri-edit-line editmodal1 me-2 align-middle "></i>Change Password</a></li>

                                            @if($value->flag == 1)
                                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#deletepopup" data-bs-toggle="modal" onclick="deletepopup(<?= $value->id ?>,'users','activate')" aria-controls="editmodal"><i class="ri-checkbox-circle-line me-2"></i></i>Active</a></li>
                                            @else
                                            <li><a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#deletepopup" data-bs-toggle="modal" onclick="deletepopup(<?= $value->id ?>,'users','deactivate')" aria-controls="editmodal"><i class="ri-alert-line me-2 align-middle"></i>Deactive</a></li>
                                            @endif

                                            <li><a class="dropdown-item" data-bs-target="#deletepopup" data-bs-toggle="modal" onclick="deletepopup(<?= $value->id ?>,'users','delete')"><i class="ri-delete-bin-5-line me-2 align-middle"></i>Delete</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col">
                                <div class="team-profile-img">
                                    <div class="avatar-lg img-thumbnail rounded-circle shadow flex-shrink-0">
                                        <?php if (!empty($value->vendor_staff_image)) { ?>
                                            <img src="{{asset('uploads/staff/'.$value->vendor_staff_image)}}" alt="" class="img-fluid d-block rounded-circle" />
                                        <?php } else { ?>
                                            <img src="{{asset('admin/images/users/avatar-1.jpg')}}" alt="" class="img-fluid d-block rounded-circle" />
                                        <?php } ?>
                                    </div>
                                    <div class="team-content">
                                        <a data-bs-toggle="offcanvas" onclick="showuserdetails(<?= $value->id ?>)" href="#offcanvasExample" aria-controls="offcanvasExample">

                                            <h5 class="fs-16 mb-1 <?php if ($value['flag'] == 1) {
                                                                        echo "strike-through";
                                                                    } ?>"><?php echo $value['vendor_name']; ?></h5>
                                        </a>
                                        <p class="text-muted mb-0"><?php echo $value['vendor_staff_role']; ?></p>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 col">
                                <div class="row text-muted text-center">
                                    <div class="col-6 border-end border-end-dashed">
                                        <h6 class="mb-1"><?php echo $value->vendor_phone ?? ''; ?></h6>
                                        <p class="text-muted mb-0">Mobile</p>
                                    </div>
                                    <div class="col-6">
                                        <h6 class="mb-1"><?php echo $value->vendor_email ?? ''; ?></h6>
                                        <p class="text-muted mb-0">Email</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 col">
                                <div class="text-end">
                                    <a class="btn btn-light view-btn" data-bs-toggle="offcanvas" onclick="showuserdetails(<?= $value->id ?>)" href="#offcanvasExample" aria-controls="offcanvasExample">View Profile</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--end card-->
            </div>

            @php } } else { @endphp

            <div id="notfound">
                <div class="notfound">
                    <h2>No Data Found</h2>
                    <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addmembers"><i class="ri-add-fill me-1 align-bottom"></i> Add New </button>
                </div>
            </div>

            @php } @endphp

        </div>



        <div class="modal fade" id="addmembers" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header bg-soft-info p-3">
                        <h5 class="modal-title" id="myModalLabel">Add New Staff</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form method="POST" id="addstaff">
                            @csrf()
                            <div class="row">
                                <div class="col-lg-6 mb-3">
                                    <div class="">
                                        <label for="teammembersName" class="form-label">Name</label>
                                        <input type="text" class="form-control" name="staff_name" id="staff_name" placeholder="Enter name">
                                    </div>
                                    <div class="error" id="staff_name_error"></div>
                                </div>
                                <div class="col-lg-6 mb-3">
                                    <div class="">
                                        <label for="teammembersName" class="form-label">Email Address</label>
                                        <div style="display: flex;">
                                            <input type="text" class="form-control" name="staff_email" id="staff_email" aria-label="Enter Username">
                                        </div>
                                    </div>
                                    <div class="error" id="staff_email_error"></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 mb-3">
                                    <div class="">
                                        <label for="teammembersName" class="form-label">Password</label>
                                        <input type="password" class="form-control" name="staff_password" id="staff_password" placeholder="Enter Password">
                                    </div>
                                    <div class="error" id="staff_password_error"></div>
                                </div>
                                <div class="col-lg-6 mb-3">
                                    <div class="">
                                        <label for="teammembersName" class="form-label">Mobile</label>
                                        <input type="number" class="form-control" name="staff_mob" id="staff_mob" placeholder="Enter Mobile No">
                                    </div>
                                    <div class="error" id="staff_mob_error"></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 mb-3">
                                    <div class="">
                                        <label for="designation" class="form-label">Access Code</label>
                                        <select class="form-control" name="access_code">

                                        <option value=""> Access Code </span>
                                        @php if (!empty($access_code)) { foreach ($access_code as $value) { @endphp
                                            <option value="{{$value->id}}">{{$value->title}}</option>
                                        @php } } @endphp   
                                        </select>
                                    </div>
                                    <div class="error" id="role_error"></div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="mb-4">
                                        <label for="formFile" class="form-label">Profile Images</label>
                                        <input class="form-control" type="file" id="staff_image" name="staff_image">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="hstackloader"></div>
                                    <div class="hstack gap-2 justify-content-end">
                                        <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-success">Add Member</button>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>

</div>
</div>




<div class="modal fade zoomIn" id="change_password" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-soft-info p-3">
                <h5 class="modal-title" id="myModalLabel">Update Password</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="btn-close"></button>
            </div>
            <div class="modal-body">
                <form method="POST" id="changepassworddata">
                    @csrf()
                    <span id="changepassworddiv"></span>

                    <div class="d-flex gap-2 justify-content-center mt-4 mb-2">
                        <button type="button" class="btn w-sm btn-light" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn w-sm btn-success " id="delete-record">Update Password</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@include('admin.deactivate')


<div class="modal fade" id="editmodal" tabindex="-1" aria-labelledby="exampleModalgridLabel" aria-modal="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-soft-info p-3">
                <h5 class="modal-title" id="myModalLabel">Edit Staff</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="POST" id="editstaffdetails">
                    @csrf()
                    <div id="editstaffdiv"></div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="hstackloader"></div>
                            <div class="hstack gap-2 justify-content-end">
                                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-success">Edit Staff</button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>





<script>
    //  add modal
    $(document).on('submit', '#addstaff', function(ev) {
        $('.error').html('');

        ev.preventDefault(); // Prevent browers default submit.
        var formData = new FormData(this);
        var error = false;

        if (error == false) {
            $.ajax({
                url: "{{ url('admin/staff/addstaff') }} ",
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


    function showuserdetails(id) {
        $.ajax({
            url: "{{url('admin/staff/getstaffside')}}" + '/' + id,
            type: 'GET',
            cache: true,
            contentType: false,
            processData: false,
            success: function(result) {
                $("#offcanvasExample").html(result);
            },
        })
    }


    function showeditmodulediv(id) {
        $.ajax({
            url: "{{url('admin/staff/geteditdetails')}}" + '/' + id,
            type: 'GET',
            cache: true,
            contentType: false,
            processData: false,
            success: function(result) {
                $("#editstaffdiv").html(result);
            },
        })
    }


    $(document).on('submit', '#editstaffdetails', function(ev) {
        $('.error').html('');

        ev.preventDefault(); // Prevent browers default submit.
        var formData = new FormData(this);
        var error = false;

        if (error == false) {
            $.ajax({
                url: "{{ url('admin/staff/editstaffdetails') }} ",
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
                            $('#' + prefix + '_error2').text(val[0]);
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



    $(document).on('submit', '#changepassworddata', function(ev) {
        $('.error').html('');

        ev.preventDefault(); // Prevent browers default submit.
        var formData = new FormData(this);
        var error = false;

        if (error == false) {
            $.ajax({
                url: "{{ url('admin/staff/updatepassword') }} ",
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


    function showchangepasswordpopup(id, table) {
        $.ajax({
            url: "{{ url('admin/staff/changepassworddiv')}}" + "/" + id + '/' + table,
            type: 'get',
            cache: true,
            contentType: false,
            processData: false,
            success: function(result) {
                $("#changepassworddiv").html(result);
            },
        })
    }
</script>


@endsection()
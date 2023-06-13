@extends('admin.layout')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">Access Code</h4>
            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Content Management</a></li>
                    <li class="breadcrumb-item active">Access Code</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<div class="card">
    <div class="card-body">
        <div class="row g-2">
            <div class="col-sm-4">
            </div>
            <div class="col-sm-auto ms-auto">
                <div class="list-grid-nav gap-1">
                    <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addmembers"><i class="ri-add-fill me-1 align-bottom"></i> Add Access Code</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <div id="customerList">
                    <div class="row g-4 mb-3">

                        <div class="col-sm">
                            <div class="d-flex justify-content-sm-end">
                                <div class="search-box ms-2">
                                    <input type="text" class="form-control search" placeholder="Search...">
                                    <i class="ri-search-line search-icon"></i>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="table-responsive table-card mt-3 mb-1">
                        @php if (!empty($category)) { @endphp
                        <table class="table align-middle table-nowrap" id="customerTable">
                            <thead class="table-light">
                                <tr>
                                    <th class="sort">S. No.</th>
                                    <th class="sort" data-sort="customer_name">Title</th>
                                    <th class="sort" data-sort="email">Icon</th>
                                    <th class="sort" data-sort="action">Action</th>
                                </tr>
                            </thead>
                            <tbody class="list form-check-all">
                                @php $i = 0; foreach ($category as $value) { $i++; @endphp
                                <tr>
                                    <td><?= $i ?></td>
                                    <td class="email">{{ $value->title ?? '' }}</td>
                                    <td>
                                        @if(!empty($value->icon))
                                        <img src="{{ asset('uploads/access/'.$value->icon) }}" style="height: 15px; object-fit: contain">
                                        @endif
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-info" data-bs-toggle="modal" data-bs-target="#editmodal" onclick="showeditmodulediv(<?= $value->id ?>)"><i class="ri-edit-box-line"></i></button>

                                        @if ($value->flag == 1)
                                        <button class="btn btn-sm btn-success" data-bs-target="#deletepopup" data-bs-toggle="modal" onclick="deletepopup(<?= $value->id ?>,'access_code','activate')"><i class="ri-checkbox-circle-line"></i></button>
                                        @else
                                        <button class="btn btn-sm btn-danger" data-bs-target="#deletepopup" data-bs-toggle="modal" onclick="deletepopup(<?= $value->id ?>,'access_code','deactivate')"><i class="ri-alert-line"></i></button>
                                        @endif
                                    </td>
                                </tr>
                                @php } @endphp
                            </tbody>
                        </table>

                        <div class="d-flex justify-content-end">
                            <div class="pagination-wrap hstack gap-2">
                                <a class="page-item pagination-prev disabled" href="#">
                                    Previous
                                </a>
                                <ul class="pagination listjs-pagination mb-0"></ul>
                                <a class="page-item pagination-next" href="#">
                                    Next
                                </a>
                            </div>
                        </div>

                        @php } else { @endphp
                        <div class="noresult">
                            <div class="text-center">
                                <lord-icon src="https://cdn.lordicon.com/msoeawqm.json" trigger="loop" colors="primary:#121331,secondary:#08a88a" style="width:75px;height:75px"></lord-icon>
                                <h5 class="mt-2">Sorry! No Result Found</h5>
                            </div>
                        </div>
                        @php } @endphp
                    </div>


                </div>
            </div>
        </div>

    </div>

</div>



<div class="modal fade" id="addmembers" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-soft-info p-3">
                <h5 class="modal-title" id="myModalLabel">Add New Access Code</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="POST" id="adddetails">
                    @csrf()
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label" for="steparrow-gen-info-email-input">Title</label>
                                <input type="text" class="form-control" name="title" id="title" placeholder="Enter title">
                                <div class="error" id="title_error"></div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label for="teammembersName" class="form-label"> Image<span class="error">*</span></label>
                                <input type="file" class="form-control" name="image" id="image">
                                <div class="error" id="image_error"></div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <span class="hstackloader"></span>
                            <div class="hstack gap-2 justify-content-end">
                                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-success">Add</button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>

    </div>

</div>


<div class="modal fade" id="editmodal" tabindex="-1" aria-labelledby="exampleModalgridLabel" aria-modal="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-soft-info p-3">
                <h5 class="modal-title" id="myModalLabel">Edit Access Code</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="POST" id="editdetails">
                    @csrf()
                    <div id="editstaffdiv"></div>

                    <div class="row">
                        <div class="col-lg-12">
                            <span class="hstackloader"></span>
                            <div class="hstack gap-2 justify-content-end">
                                <button type="button" class="btn btn-light" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-success">Edit</button>
                            </div>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>

@include('admin.deactivate')

<script>
    //  add modal
    $(document).on('submit', '#adddetails', function(ev) {
        $('.error').html('');

        ev.preventDefault(); // Prevent browers default submit.
        var formData = new FormData(this);
        var error = false;

        if (error == false) {
            $.ajax({
                url: "{{ url('admin/access_code/store') }} ",
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


    function showeditmodulediv(id) {
        $.ajax({
            url: "{{url('admin/access_code/edit')}}" + '/' + id,
            type: 'GET',
            cache: true,
            contentType: false,
            processData: false,
            success: function(result) {
                $("#editstaffdiv").html(result);
            },
        })
    }


    $(document).on('submit', '#editdetails', function(ev) {
        $('.error').html('');

        ev.preventDefault(); // Prevent browers default submit.
        var formData = new FormData(this);
        var error = false;

        if (error == false) {
            $.ajax({
                url: "{{ url('admin/access_code/update') }} ",
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
                    } else {
                        $.each(result.message, function(prefix, val) {
                            $('#' + prefix + '_error2').text(val[0]);
                        });
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


@endsection()
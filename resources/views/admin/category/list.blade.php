@extends('admin.layout')

@section('content')

<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">Category</h4>
            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Category Management</a></li>
                    <li class="breadcrumb-item active">Category</li>
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
                    <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addmembers"><i class="ri-add-fill me-1 align-bottom"></i> Add Category</button>
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
                        @php if (!empty($cat_list)) { @endphp
                        <table class="table align-middle table-nowrap" id="customerTable">
                            <thead class="table-light">
                                <tr>
                                    <th class="sort">S. No.</th>
                                    <th class="sort" data-sort="customer_name">Name</th>
                                    <th class="sort" data-sort="customer_name">Color</th>
                                    <th class="sort" data-sort="customer_name">Short Name</th>
                                    <th class="sort" data-sort="email">Status</th>
                                    <th class="sort" data-sort="action">Action</th>
                                </tr>
                            </thead>
                            <tbody class="list form-check-all">
                                @php $i = 0; foreach ($cat_list as $value) { $i++; @endphp

                                <tr>
                                    <td><?= $i ?></td>
                                    <td class="email"><a href="{{ url('admin/category/back/'.$value->id)}}">{{ $value->name ?? '' }} </a>  </td>
                                    <td><span style="color: {{ $value->color ?? '' }}">{{ $value->color ?? '' }}</span></td>
                                    <td><span>{{ $value->short_name ?? '' }}</span></td>
                                    @if($value->flag == 0)
                                    <td><span class="badge bg-success">{{ 'Active'}} </span></td>
                                    @elseif($value->flag == 1)
                                    <td><span class="badge bg-danger">{{ 'Inactive'}} </span></td>
                                    @endif
                                    <td>
                                        <button type="button" class="btn btn-sm btn-info" data-bs-toggle="modal" data-bs-target="#editmodal" onclick="showeditmodulediv(<?= $value->id ?>)"><i class="ri-edit-box-line"></i></button>

                                        @if ($value->flag == 1)
                                        <button class="btn btn-sm btn-success" data-bs-target="#deletepopup" data-bs-toggle="modal" onclick="deletepopup(<?= $value->id ?>,'category','activate')"><i class="ri-checkbox-circle-line"></i></button>
                                        @else
                                        <button class="btn btn-sm btn-danger" data-bs-target="#deletepopup" data-bs-toggle="modal" onclick="deletepopup(<?= $value->id ?>,'category','deactivate')"><i class="ri-alert-line"></i></button>
                                        @endif

                                        <button class="btn btn-sm btn-danger remove-item-btn" data-bs-target="#deletepopup" data-bs-toggle="modal" onclick="deletepopup(<?= $value->id ?>,'category','delete')"><i class="ri-delete-bin-line"></i></button>
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
                <h5 class="modal-title" id="myModalLabel">Add New Category</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="POST" id="adddetails">
                    @csrf()
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label" for="steparrow-gen-info-email-input">Name</label>
                                <input type="text" class="form-control" name="name" id="name" placeholder="Enter Category Name">
                                <div class="error" id="name_error"></div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="mb-3">
                                <label class="form-label" for="steparrow-gen-info-email-input">Color</label>
                                <input type="color" class="form-control" name="color" id="color" placeholder="Enter Category Color">
                                <div class="error" id="color_error"></div>
                            </div>
                        </div>

                        <div class="col-lg-4">
                            <div class="mb-3">
                                <label class="form-label" for="steparrow-gen-info-email-input">Short Name</label>
                                <input type="text" class="form-control" name="short_name" id="name" placeholder="Enter Sort Name">
                                <div class="error" id="sort_name_error"></div>
                            </div>
                        </div>

                        <div class="col-lg-8">
                            <div class="mb-3">
                                <label class="form-label">Access Control</label>
                                <select class="form-control" required name="access[]" id="choices-multiple-remove-button" multiple>
                                    @if(!empty($access))
                                    @foreach($access as $value)
                                    <option value="{{ $value->id }}">{{ $value->title }}</option>
                                    @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>

                        <input type="hidden" class="rowcount" value="" name="rowcount">

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
                <h5 class="modal-title" id="myModalLabel">Edit Category</h5>
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
                                <button type="submit" class="btn btn-success">Edit Sport</button>
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
    var rowcount = 1;
    $(".rowcount").val(rowcount);

    function add_row() {
        rowcount++;
        $(".rowcount").val(rowcount);

        var html = '<div class="row borderset" id="addnew' + rowcount + '" >';

        html += '<div class="col-lg-4"> <div class="mb-3"><label class="form-label" for="steparrow-gen-info-email-input">Sort Name</label><input type="text" class="form-control" name="sort_name[]" placeholder="Enter Sort Name"></div></div>';
        html += '<div class="col-lg-2"> <div class="form-check form-switch"><div class="d-flex align-items-start gap-3 mt-4"><button type="button" class="btn btn-danger btn-icon waves-effect waves-light" onclick="removerow(' + rowcount + ')"><i class="ri-delete-bin-5-line"></i></button></div></div></div><div class="eqress"></div></div>';
        $('#addnew').append(html);


    }

    function removerow(product) {
        $('#addnew' + product).remove();
    }


    //  add modal
    $(document).on('submit', '#adddetails', function(ev) {
        $('.error').html('');

        ev.preventDefault(); // Prevent browers default submit.
        var formData = new FormData(this);
        var error = false;

        if (error == false) {
            $.ajax({
                url: "{{ url('admin/category/store') }} ",
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


    function showeditmodulediv(id) {
        $.ajax({
            url: "{{url('admin/category/edit')}}" + '/' + id,
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
                url: "{{ url('admin/category/update') }} ",
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
@extends('admin.layout')
@section('content')
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css">
<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">Update  Candidate</h4>
            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Update  Candidate</a></li>
                    <li class="breadcrumb-item active">Update  Candidate</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!-- end page title -->
<div class="card">
    <div class="row">
        <div class="col-md-3">
        </div>
        <div class="col-md-12" style="padding: 5px 20px 0px 5px;">
            <div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-offset="0" class="scrollspy-example mt-0">
                <div class="text-muted">
                    <form method="post" action="{{route('candidates.update',$candidates->id)}}" id="adddealer" enctype="multipart/form-data">
                        @csrf()
                        @method('put')
                        <div id="demographics" class="mb-3">
                            <div class="accordion custom-accordionwithicon" id="accordionWithicon">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="accordionwithiconExample1">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#personal" aria-expanded="true" aria-controls="accor_iconExamplecollapse1">
                                            <i class="ri-global-line"></i> Candidate Information
                                        </button>
                                    </h2>
                                    <div id="personal" class="accordion-collapse collapse show" aria-labelledby="accordionwithiconExample1" data-bs-parent="#accordionWithicon">
                                        <div class="accordion-body">
                                            <div class="row">
                                                <div class="col-md-3 mb-3">
                                                    <label>Job Profile </label>
                                                    <input type="text" class="form-control" name="job_profile" value="{{$candidates->job_profile}}" placeholder="Enter Job profile">
                                                    <span id="job_profile_error" class="error"></span>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label> Name</label>
                                                    <input type="text" class="form-control" name="name" value="{{$candidates->name}}" placeholder="Enter First Name">
                                                    <span id="name_error" class="error"></span>
                                                </div>

                                                <div class="col-md-3 mb-3">
                                                    <label>E-mail </label>
                                                    <input type="text" class="form-control" name="email" value="{{$candidates->email}}"  placeholder="Enter E-mail Address">
                                                    <span id="email_error" class="error"></span>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label>Mobile </label>
                                                    <input type="text" class="form-control" name="mobile" value="{{$candidates->mobile}}"  placeholder="Enter Mobile">
                                                    <span id="mobile_error" class="error"></span>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label>Experience</label>
                                                    <input type="text" class="form-control" name="experience" value="{{$candidates->experience}}" placeholder="Enter Experience">
                                                    <span id="experience_error" class="error"></span>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label>Salary</label>
                                                    <input type="text" class="form-control" name="salary"   value="{{$candidates->salary}}" placeholder="Enter  Candidate Salary">
                                                    <span id="salary_error" class="error"></span>
                                                </div>
                                                <div class="col-md-3 mb-3">
                                                    <label>location </label>
                                                    <input type="text" class="form-control" name="location"  value="{{$candidates->location}}" placeholder="Enter Candidate location">
                                                    <span id="location_error" class="error"></span>

                                                </div>

                                                <div class="col-md-3 mb-3">
                                                    <label>Notice Period</label>
                                                    <input type="text" class="form-control" name="notice_period"  value="{{$candidates->notice_period}}" placeholder="Enter Notice Period">
                                                    <span id="notice_period_error" class="error"></span>
                                                </div>
                                                <div class="col-md-3 mb-3 mt-3">

                                                <input type="submit" value="submit" class="btn btn-primary">
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    //  add modal
    $(document).on('submit', '#adddealer', function(ev) {
        $('.error').html('');
        ev.preventDefault(); // Prevent browers default submit.
        var formData = new FormData(this);
        var error = false;
        _url = $(this).attr('action');
        if (error == false) {
            $.ajax({
                url: _url,
                type: 'post',
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend: function() {
                    $(".hstackloader").html('<lord-icon src="https://cdn.lordicon.com/dpinvufc.json" trigger="loop" colors="primary:#4bb543,secondary:#4bb543" style="width:50px;"> </lord-icon>');
                    $(".error").text('');
                },
                success: function(result) {
                    if (result.code == 200) {
                        $(".hstackloader").html('');
                        swal(result.message, ' ', 'success');
                        $('#adddealer')[0].reset();
                    } else {
                        swal(result.message, ' ', 'error');
                    }
                },
                error: function(show) {
                    $(".hstack").css('display', 'flex');
                    $.each(show.responseJSON.errors, function(prefix, val) {
                        $('#' + prefix + '_error').text(val[0]);
                    });
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
@endsection()
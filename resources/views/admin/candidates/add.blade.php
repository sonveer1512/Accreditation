@extends('admin.layout')
@section('content')
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap5.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css">

<style>
    .uploadimg {
        /* float: right; */

        width: 16%;
        margin: auto;
    }

    .square {
        height: 140px;
        width: 140px;
        border: 1px solid black;
        border-radius: 10px;
        text-align: center;
    }

    label#uploadphoto {
        top: 29%;
        left: 18%;
        position: sticky;
    }

    #blah {
        width: 100%;
        object-fit: fill;
        height: 100%;
    }
</style>

<!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
            <h4 class="mb-sm-0">Add New Players</h4>
            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item active">Add New Players</li>
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
        <div class="col-md-12">
            <div data-bs-spy="scroll" data-bs-target="#list-example" data-bs-offset="0" class="scrollspy-example mt-0">
                <div class="text-muted">
                    <form method="post" action="{{route('candidates.store')}}" id="adddealer" enctype="multipart/form-data">
                        @csrf()
                        @method('post')
                        <div id="demographics" class="mb-3">
                            <div class="accordion custom-accordionwithicon" id="accordionWithicon">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="accordionwithiconExample1">
                                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#personal" aria-expanded="true" aria-controls="accor_iconExamplecollapse1">
                                            <i class="ri-global-line"></i> Players Information
                                        </button>
                                    </h2>
                                    <div id="personal" class="accordion-collapse collapse show" aria-labelledby="accordionwithiconExample1" data-bs-parent="#accordionWithicon">
                                        <div class="accordion-body">
                                            <div class="row">
                                                <div class="col-md-5">
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>UID : </label></td>
                                                            <td style="width: 60%;"> 
                                                                <input type="text" class="form-control" name="uid" placeholder="Enter UID" style="width: 100%">
                                                                <span id="uid_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>First Name : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="first_name" placeholder="Enter First Name" style="width: 100%">
                                                                <span id="first_name_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Last Name : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="last_name" placeholder="Enter Last Name" style="width: 100%">
                                                                <span id="last_name_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Preferred name on Accreditation: </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="accreditation_name" placeholder="Enter Preferred name on Accreditation" style="width: 100%">
                                                                <span id="accreditation_name_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Date of Birth : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="date" class="form-control" name="dob" placeholder="Enter Date of Birth" style="width: 100%">
                                                                <span id="dob_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Address : </label></td>
                                                            <td style="width: 60%;">
                                                                <textarea class="form-control" name="address" style="width: 100%"></textarea>
                                                                <span id="address_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Email Address : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="email" placeholder="Enter Email" style="width: 100%">
                                                                <span id="email_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Mobile Number : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="mobile" placeholder="Enter Mobile" style="width: 100%">
                                                                <span id="mobile_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Gender: </label></td>
                                                            <td style="width: 60%;">
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <input type="radio" name="gender" value="M" placeholder="Enter Last Name">
                                                                        <label>Male</label>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <input type="radio" name="gender" value="F" placeholder="Enter Last Name">
                                                                        <label>Female</label>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Father's Name : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="father_name" placeholder="Enter Father name" style="width: 100%">
                                                                <span id="father_name_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Mother's Name : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="mother_name" placeholder="Enter Mother name" style="width: 100%">
                                                                <span id="mother_name_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Spourse Name : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="spouse_name" placeholder="Enter Spouse Name" style="width: 100%">
                                                                <span id="spouse_name_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>T-Shirt size : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="tshirtsize" placeholder="Enter T-shirt size" style="width: 100%">
                                                                <span id="tshirtsize_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Reponsible Organisation : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="organisation" value="HOST STATE - MADHYA PRADESH" style="width: 100%">
                                                                <span id="organisation_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Designation : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="designation" placeholder="Enter Designation" style="width: 100%">
                                                                <span id="designation_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Orgaisation Address : </label></td>
                                                            <td style="width: 60%;">
                                                                <textarea class="form-control" name="org_address" style="width: 100%"></textarea>
                                                                <span id="org_address_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Organisation Email Id : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="org_email_id" placeholder="Enter Organisation Email Id" style="width: 100%">
                                                                <span id="org_email_id_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Organisation Phone Number : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="text" class="form-control" name="org_phone" placeholder="Enter Organisation Phone Number" style="width: 100%">
                                                                <span id="org_phone_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 40%;"><label>Select Document to Upload (Aadhar, Passport etc.) : </label></td>
                                                            <td style="width: 60%;">
                                                                <input type="file" class="form-control" name="documents[]" multiple placeholder="Enter Documents" style="width: 100%">
                                                                <span id="documents_error" class="error"></span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table class="mb-3" style="width: 100%;">
                                                        <tr>
                                                            <td style="width: 100%;" class="d-flex">
                                                                <input type="checkbox" name="terms" required>
                                                                <label style="margin-left: 10px;">I hereby warrant that all the information provided above is true and correct, to the best of my knowledge</label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div class="col-md-7">
                                                    <div class="uploadimg">
                                                        <div class="square" style="overflow: hidden; margin-bottom: 15px; background: white;">
                                                            <label id="uploadphoto">Upload <br>Photograph</label>
                                                            <img id="blah" src="" alt="your image" style="display: none;" />
                                                        </div>
                                                        <input type="file" name="player_image" id="player_image">

                                                        <div class="error" id="image_error"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3 mb-3 mt-3">
                                                    <input type="submit" value="submit" class="btn btn-primary">
                                                    <span id="eqres"></span>
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
                    if (result.code == 400) {
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

<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $('#blah').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#player_image").change(function() {
        $("#uploadphoto").css('display', 'none');
        $("#blah").css('display', 'block');
        readURL(this);

    });
</script>
@endsection()
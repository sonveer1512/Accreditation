<input type="hidden" class="form-control" name="rowid" value="{{ $id }}">

<div class="row">
    <div class="col-lg-6 mb-3">
        <div class="">
            <label for="teammembersName" class="form-label">Name</label>
            <input type="text" class="form-control" name="staff_name" id="staff_name" value="{{ $vendor_name }}" placeholder="Enter name">
        </div>
        <div class="error" id="staff_name_error2"></div>
    </div>
    <div class="col-lg-6 mb-3">
        <div class="">
            <label for="teammembersName" class="form-label">Username</label>
            <div style="display: flex;">
                <input type="text" class="form-control" name="staff_email" value="{{ $vendor_email }}" readonly id="staff_email" aria-label="Enter Username">
            </div>
        </div>
        <div class="error" id="staff_email_error2"></div>
    </div>
</div>
<div class="row">
    <div class="col-lg-6 mb-3">
        <div class="">
            <label for="teammembersName" class="form-label">Mobile</label>
            <input type="number" class="form-control" name="staff_mob" id="staff_mob" value="{{ $vendor_phone }}" placeholder="Enter Mobile No">
        </div>
        <div class="error" id="staff_mob_error2"></div>
    </div>
    <div class="col-lg-6 mb-3">
        <div class="">
            <label for="designation" class="form-label">Role</label>
            <input type="text" class="form-control" name="staff_role" id="staff_role" value="{{ $vendor_staff_role }}" placeholder="Enter Role">
        </div>
        <div class="error" id="staff_role_error2"></div>
    </div>
</div>
<div class="row">
    <div class="col-lg-4">
        <div class="mb-4">
            <label for="formFile" class="form-label">Profile Images</label>
            <input class="form-control" type="file" id="staff_image" name="staff_image">
        </div>
    </div>
    <div class="col-lg-2">
        @if(!empty($vendor_staff_image))
        <img src="{{asset('uploads/staff/'.$vendor_staff_image)}}" alt="" class="avatar-lg img-thumbnail mx-auto" />
        @endif
    </div>
</div>
<div class="row">
    <div id="permission" class="col-lg-12 mb-3">
        <div class="">
            <div class="tshadow mb25 bozero">
                <h4 class="pagetitleh2">Select Module & Permissions </h4>
                <div class="around10">

                    <div class="row">
                        <div class="col-md-4 col-sm-4 col-sx-4"><b>Module</b></div>
                        <div class="col-md-4 col-sm-2 col-sx-2 text-center"><b>Read</b></div>
                        <div class="col-md-4 col-sm-2 col-sx-2 text-center"><b>Write</b></div>
                    </div>

                    @php
                    if(!empty($modules)) {
                    foreach($modules as $value) {  @endphp

                    <div class="row">
                        <div class="col-md-4 col-sm-4 col-sx-4">
                            {{$value['module']}}
                            <input type="hidden" name="sidebar_name[]" value="{{ $value['sidebar_id'] }}">
                        </div>
                        <div class="col-md-4 col-sm-2 col-sx-2 text-center can_add">
                            <input type="checkbox" name="read{{ $value['sidebar_id'] }}" value="1"  @if($value['read'] == '1') checked @endif  >
                        </div>
                        <div class="col-md-4 col-sm-2 col-sx-2 text-center can_view">
                            <input type="checkbox" name="write{{ $value['sidebar_id'] }}" value="1"  @if($value['write_permission'] == '1') checked @endif  >
                        </div>
                    </div>

                    @php } } @endphp

                </div>
            </div>
        </div>
    </div>
</div>
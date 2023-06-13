<input type="hidden" name="rowid" value="{{ $item->id }}">

<div class="row">
    <div class="col-lg-6">
        <div class="mb-3">
            <label class="form-label" for="steparrow-gen-info-email-input">Title</label>
            <input type="text" class="form-control" name="title" id="title" placeholder="Enter title" value="{{ $item->title}}">
            <div class="error" id="title_error"></div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="mb-3">
            <label for="teammembersName" class="form-label"> Image<span class="error">*</span></label>
            <input type="file" class="form-control" name="image" id="image">

            @if(!empty($item->icon))
            <img src="{{ asset('uploads/access/'.$item->icon) }}" style="width:100px">
            @endif
            <div class="error" id="image_error"></div>
        </div>
    </div>
</div>
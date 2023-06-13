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
            <label for="teammembersName" class="form-label"> Color code<span class="error">*</span></label>
            <input type="color" class="form-control" name="color_code" id="color_code" value="{{ $item->color_code}}">
            <div class="error" id="color_code_error"></div>
        </div>
    </div>
</div>
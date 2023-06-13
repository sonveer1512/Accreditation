<input type="hidden" name="id" value="{{ $item->id }}">

<div class="row">
    <div class="col-lg-12">
        <div class="mb-3">
            <label class="form-label" for="steparrow-gen-info-email-input">Name</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Enter Name" value="{{ $item->name}}">
            <div class="error" id="title_error"></div>
        </div>
    </div>
    
</div>
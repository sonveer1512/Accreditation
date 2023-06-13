<input type="hidden" name="id" value="{{ $item->id }}">

<div class="row">
    <div class="col-lg-6">
        <div class="mb-3">
            <label class="form-label" for="steparrow-gen-info-email-input">Name</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Enter Category Name" value="{{ $item->name}}">
            <div class="error" id="name_error2"></div>
        </div>
    </div>
    <div class="col-lg-6">
        <div class="mb-3">
            <label class="form-label" for="steparrow-gen-info-email-input">Color</label>
            <input type="color" class="form-control" name="color" id="color" placeholder="Enter Category Color" value="{{ $item->color}}">
            <div class="error" id="color_error2"></div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="mb-3">
            <label class="form-label" for="steparrow-gen-info-email-input">Short Name</label>
            <input type="text" class="form-control" name="short_name" id="name" placeholder="Enter Sort Name" value="{{ $item->short_name}}">
            <div class="error" id="sort_name_error2"></div>
        </div>
    </div>

    <div class="col-lg-8">
        <div class="mb-3">
            <label class="form-label">Access Control</label>
            <select class="form-control" required name="access[]" id="choices-multiple-remove-button" multiple>
                @php
                $acc = [];
                if(!empty($item->access)) {
                    $acc = json_decode($item->access);
                }
                @endphp

                @if(!empty($access))
                @foreach($access as $value)
                <option value="{{ $value->id }}" @if(!empty($acc)) @if(in_array($value->id, $acc)) {{ 'selected'; }} @endif @endif>{{ $value->title }}</option>
                @endforeach
                @endif
            </select>
        </div>
    </div>
</div>
function callnow(value, id) {
    $(".hstackloader"+id).html('<lord-icon src="https://cdn.lordicon.com/dpinvufc.json" trigger="loop" colors="primary:#4bb543,secondary:#4bb543" style="width:50px;"> </lord-icon>');
    if (value === '0') {
        $('#error' + id).html("<br>Mobile  number not added yet");
        $('#error' + id).css("color", "red");
        $(".hstackloader"+id).html('Call Now');
        $(".hstackloader"+id).css('disabled',false);

    } else {
        if (value.length == 10) {

            $.ajax({
                url: window.origin + "/admin/callnowfunction",
                type: 'post',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },

                data: {
                    id: id,
                    number: value
                },

                success: function (result) {
                    $(".hstackloader"+id).html('Call Now');
                    $(".hstackloader"+id).css('disabled',false);

                    if (result.code == 403) {
                        $('#error' + id).html("<br>" + result.error);
                        $('#error' + id).css("color", "red");
                    }
                    if(result.code != 403){
                        // $('#error' + id).html("<br>" + result.error);
                        $('#error' + id).html("<br>" + result.error);
                        $('#error' + id).css("color", "green");

                    }
                    $(".hstackloader"+id).html('Call Now');

                    // setTimeout(function(){
                    //     window.location.reload();
                    //  }, 2000);
                }

            })
        } else {
            $('#error' + id).html("<br>Invalid Mobile  number ");
            $('#error' + id).css("color", "red");

        }
    }
}
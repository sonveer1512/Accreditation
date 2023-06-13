<script>
// Enable pusher logging - don't include this in production
Pusher.logToConsole = false;

var pusher = new Pusher('955a72577352238e58e0', {
    cluster: 'ap2'
});

var channel = pusher.subscribe('BHAVESH');
channel.bind('ASSIGNED', function(data) {
    swal(data.name, ' ', 'success');
});
</script>

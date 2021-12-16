$(document).ready(function() {
    setInterval(timestamp, 1000);
});

function timestamp() {
    $.ajax({
        url: 'http://localhost/lagerprogramm/index.php',
        success: function(data) {
            $('#timestamp').html(data);
        },
    });
}

$(document).ready(function () {
    $(".tooth-chart polygon, .tooth-chart path").click(function () {
        var toothNumber = $(this).attr('id').replace('Tooth', '');
        alert('Tooth Number: ' + toothNumber);
        $(this).css('fill', 'green');
    });
});
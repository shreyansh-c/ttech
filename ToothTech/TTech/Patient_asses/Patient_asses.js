$(document).ready(function () {
    $("#advanceSearchButton").click(function () {
        $("#advancedSearchFields").toggle();

    });
    $('#newAssessButton').click(function () {
        $('#kt_modal_2').modal('show');
    });

    $('#assess_other').hide();

    $('input[name="mhistory"]').change(function () {
        if ($(this).val() === 'Any Other') {

            $('#assess_other').show();

        } else {

            $('#assess_other').hide();

        }
    });
    $(".tooth-chart polygon, .tooth-chart path").click(function () {
        var toothNumber = $(this).attr('id').replace('Tooth', '');
        alert('Tooth Number: ' + toothNumber);
        console.log(toothNumber);
        $(this).css('fill', 'green');
    });

});
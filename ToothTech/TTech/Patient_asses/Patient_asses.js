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

    
});
        //JS FOR TOOTH
$(document).ready(function () {
    $('.tooth-11-parent ').click(function () {
        $('.tooth-11-parent').css('fill', '#2199e8');
        alert("tooth 11 clicked");
    });

    $('.tooth-12-parent').click(function () {
        $('.tooth-12-parent').css('fill', 'green');
    });

    $('.tooth-13-parent').click(function () {
        $('.tooth-13-parent').css('fill', 'green');
    });

    $('.tooth-14-parent').click(function () {
        $('.tooth-14-parent').css('fill', 'green');
    });

    $('.tooth-15-parent').click(function () {
        $('.tooth-15-parent').css('fill', 'green');
    });

    $('.tooth-16-parent').click(function () {
        $('.tooth-16-parent').css('fill', 'green');
    });

    $('.tooth-17-parent').click(function () {
        $('.tooth-17-parent').css('fill', 'green');
    });

    $('.tooth-18-parent').click(function () {
        $('.tooth-18-parent').css('fill', 'green');
    });

/*Segundo Quadrante*/
    $('.tooth-21-parent').click(function () {
        $('.tooth-21-parent').css('fill', '#2199e8');
    });

    $('.tooth-22-parent').click(function () {
        $('.tooth-22-parent').css('fill', 'green');
    });

    $('.tooth-23-parent').click(function () {
        $('.tooth-23-parent').css('fill', 'green');
    });

    $('.tooth-24-parent').click(function () {
        $('.tooth-24-parent').css('fill', 'green');
    });

    $('.tooth-25-parent').click(function () {
        $('.tooth-25-parent').css('fill', 'green');
    });

    $('.tooth-26-parent').click(function () {
        $('.tooth-26-parent').css('fill', 'green');
    });

    $('.tooth-27-parent').click(function () {
        $('.tooth-27-parent').css('fill', 'green');
    });

    $('.tooth-28-parent').click(function () {
        $('.tooth-28-parent').css('fill', 'green');
    });

/*Terceiro Quadrante*/
    $('.tooth-31-parent').click(function () {
        $('.tooth-31-parent').css('fill', '#2199e8');
    });

    $('.tooth-32-parent').click(function () {
        $('.tooth-32-parent').css('fill', 'green');
    });

    $('.tooth-33-parent').click(function () {
        $('.tooth-33-parent').css('fill', 'green');
    });

    $('.tooth-34-parent').click(function () {
        $('.tooth-34-parent').css('fill', 'green');
    });

    $('.tooth-35-parent').click(function () {
        $('.tooth-35-parent').css('fill', 'green');
    });

    $('.tooth-36-parent').click(function () {
        $('.tooth-36-parent').css('fill', 'green');
    });

    $('.tooth-37-parent').click(function () {
        $('.tooth-37-parent').css('fill', 'green');
    });

    $('.tooth-38-parent').click(function () {
        $('.tooth-38-parent').css('fill', 'green');
    });

/*Quarto Quadrante*/
    $('.tooth-41-parent').click(function () {
        $('.tooth-41-parent').css('fill', '#2199e8');
    });

    $('.tooth-42-parent').click(function () {
        $('.tooth-42-parent').css('fill', 'green');
    });

    $('.tooth-43-parent').click(function () {
        $('.tooth-43-parent').css('fill', 'green');
    });

    $('.tooth-44-parent').click(function () {
        $('.tooth-44-parent').css('fill', 'green');
    });

    $('.tooth-45-parent').click(function () {
        $('.tooth-45-parent').css('fill', 'green');
    });

    $('.tooth-46-parent').click(function () {
        $('.tooth-46-parent').css('fill', 'green');
    });

    $('.tooth-47-parent').click(function () {
        $('.tooth-47-parent').css('fill', 'green');
    });

    $('.tooth-48-parent').click(function () {
        $('.tooth-48-parent').css('fill', 'green');
    });

});
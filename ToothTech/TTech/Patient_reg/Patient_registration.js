
$(document).ready(function () {
    $("#advanceSearchButton").click(function () {
        $("#advancedSearchFields").toggle();

    });
    $('#newRegButton').click(function () {
        $('#kt_modal_2').modal('show');
        //alert();
    });

    // Get the modal element
    var modal = $('#kt_modal_2');

    // Handle click on each stepper item
    modal.find('.stepper-item').on('click', function () {
        var index = $(this).index(); // Get the index of the clicked stepper item
        modal.find('.stepper-item').removeClass('current'); // Remove 'current' class from all stepper items
        $(this).addClass('current'); // Add 'current' class to the clicked stepper item
        modal.find('[data-kt-stepper-element="content"]').removeClass('current'); // Hide all step content
        modal.find('[data-kt-stepper-element="content"]').eq(index).addClass('current'); // Show the corresponding step content
    });

    // Handle click on 'Next' button
    modal.find('[data-kt-stepper-action="next"]').on('click', function () {
        var currentStep = modal.find('[data-kt-stepper-element="content"].current');
        var nextStep = currentStep.next('[data-kt-stepper-element="content"]');
        if (nextStep.length) {
            currentStep.removeClass('current');
            nextStep.addClass('current');
        }
    });

    // Handle click on 'Back' button
    modal.find('[data-kt-stepper-action="previous"]').on('click', function () {
        var currentStep = modal.find('[data-kt-stepper-element="content"].current');
        var prevStep = currentStep.prev('[data-kt-stepper-element="content"]');
        if (prevStep.length) {
            currentStep.removeClass('current');
            prevStep.addClass('current');
        }
    });

    $('#pay_patienttype').change(function () {
        var selectedValue = $(this).val();
        var charges = {
            General: '20 rupees',
            Staff: 'Free',
            Student: 'Free',
            VIP: 'Free',
            VVIP: 'Free'
        };

        $('#charge_display').html('Charge: ' + charges[selectedValue]);
    });

    // Generate random numbers
    var opdNumber = generateRandomNumber();
    var uhidNumber = generateRandomNumber();

    // Set random numbers to the respective elements
    $('#opd_number').html('OPD Number: ' + opdNumber);
    $('#uhid_number').html('UHID Number: ' + uhidNumber);

    // Function to generate a random number
    function generateRandomNumber() {
        return Math.floor(Math.random() * 1000000) + 1; // Generates a random number between 1 and 1,000,000
    }

    $('[data-kt-stepper-action="previous"]').click(function () {
        showAlert('Back');
    });
    $('[data-kt-stepper-action="next"]').click(function () {
        showAlert('Continue');
    });

    function showAlert(action) {
        alert("You clicked " + action);
    }

    $('select[data-control="select2"]').change(function () {
        var selectedCountry = $(this).val();
        alert(selectedCountry);
    });

    $('#printBtn').click(function () {
        var divToPrint = $('#patientcard_form').html();
        var newWin = window.open('', 'Print-Window');

        newWin.document.open();
        newWin.document.write('<html><head><link rel="stylesheet" type="text/css" href="/TTech/assets/plugins/global/plugins.bundle.css"><link rel="stylesheet" type="text/css" href="/TTech/assets/css/style.bundle.css"></head><body>' + divToPrint + '</body></html>');
        newWin.document.close();

        setTimeout(function () {
            newWin.print();
        }, 20);
    });

});
//this is a comment

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

    /*========================validation===============*/

    const form = document.getElementById('PatientRegistrationFields');
    //console.log(form);

    // Init form validation rules. For more info check the FormValidation plugin's official documentation:https://formvalidation.io/
    var validator = FormValidation.formValidation(
        form,
        {
            fields: {
                'Patient_Name1': {
                    validators: {
                        notEmpty: {
                            message: 'Plese Enter Patient Name!'
                        }
                        

                    }
                   
                },
                'Patient_Age1': {
                    validators: {
                        notEmpty: {
                            message: 'Plese Enter Age!'
                        }


                    }

                },
                'father_Name1': {
                    validators: {
                        notEmpty: {
                            message: 'Plese Enter Father Name!'
                        }


                    }

                },
                'Address1': {
                    validators: {
                        notEmpty: {
                            message: 'Plese Enter Address!'
                        }


                    }

                },
                'DateOfBirth1': {
                    validators: {
                        notEmpty: {
                            message: 'Plese Enter Date of Birth!'
                        }


                    }

                },
                'Mobile_Number1': {
                    validators: {
                        notEmpty: {
                            message: 'Plese Enter Mobile Number!'
                        }


                    }

                },
                'gender1': {
                    validators: {
                        notEmpty: {
                            message: 'Plese Enter Gender!'
                        }


                    }

                },
                'mststus1': {
                    validators: {
                        notEmpty: {
                            message: 'Plese Enter Marital Status!'
                        }


                    }

                }, 
            },

            plugins: {
                trigger: new FormValidation.plugins.Trigger(),
                bootstrap: new FormValidation.plugins.Bootstrap5({
                    rowSelector: '.fv-row',
                    eleInvalidClass: '',
                    eleValidClass: ''
                })
            }
        }
    );

    $("#btn_Continue").click(function () {
        alert("edfsadfas");
        //debugger;
        //var txtreg_Patientname = $('#reg_Patientname').val();
        //// Submit button handler
        //const submitButton = document.getElementById('btn_Continue');
        //submitButton.addEventListener('click', function (e) {
        //    // Prevent default button action
        //    e.preventDefault();


        // Validate form before submit
        if (validator) {
            validator.validate().then(function (status) {
               

                if (status == 'Valid') {
                    // Show loading indication
                    submitButton.setAttribute('data-kt-indicator', 'on');

                    // Disable button to avoid multiple click
                    submitButton.disabled = true;

                    // Simulate form submission. For more info check the plugin's official documentation: https://sweetalert2.github.io/
                    setTimeout(function () {
                        // Remove loading indication
                        submitButton.removeAttribute('data-kt-indicator');

                        // Enable button
                        submitButton.disabled = false;

                        // Show popup confirmation
                        Swal.fire({
                            text: "Form has been successfully submitted!",
                            icon: "success",
                            buttonsStyling: false,
                            confirmButtonText: "Ok, got it!",
                            customClass: {
                                confirmButton: "btn btn-primary"
                            }
                        });

                        //form.submit(); // Submit form
                    }, 2000);
                }
            });
        }
        var txtreg_Patientname = $('#reg_Patientname').val();
        var txtreg_Age = $('#reg_Patientage').val();
        var txtreg_FatherName = $('#reg_FatherName').val();
        var txtreg_Address = $('#reg_Address').val();
        
        var txtreg_MobileNumber = $('#reg_MobileNumber').val();
        var txtreg_Gender = $("input[name=gender1]:checked").val();
        var txtreg_MartialStatus = $("input[name=mststus1]:checked").val();
        var txtreg_country = $('#reg_country1 option:selected').text();
        
        alert(txtreg_country);

        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "/TTech/Patient_reg/Patient_registration.asmx/AddPatient",
            data: JSON.stringify({ Patient_Name: txtreg_Patientname, Father_Name: txtreg_FatherName, P_Address: txtreg_Address, Age: txtreg_Age, Mobile: txtreg_MobileNumber, Gender: txtreg_Gender, Marital_Status: txtreg_MartialStatus, Country: txtreg_country }),
            dataType: "json",
            success: function (data) {
                if (data.d == 'SUCCESS') {

                    // $('#reg_Patientname').val('');
                }

            },
            async: false,
            error: function (jqXHR, status, errorThrown) {
                if (jqXHR.status == "403") {
                    window.location.href = jqXHR.responseText.substring(0, jqXHR.responseText.indexOf('{'));
                }
                else {
                    var responseText = jQuery.parseJSON(jqXHR.responseText);
                    var err = eval("(" + jqXHR.responseText + ")");
                    alert(responseText.Message);
                }
            },
            failure: function (response) {
                alertify.alert(response.d);
            }
        });
    });

});
   
//});
//this is a comment


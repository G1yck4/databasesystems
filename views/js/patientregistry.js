$(function () {
    var birthdate = $('#birthdate');
    birthdate.attr('placeholder', '  /  /  ');
    birthdate.flatpickr({
      monthSelectorType: 'static',
      dateFormat: 'm/d/Y',
      static: true
    });

    newPatient();

    $("#btn-new").click(function(){
        Swal.fire({
          title: 'Enlist new Patient?',
          icon: 'question',
          showCancelButton: true,
          confirmButtonText: 'Yes',
          customClass: {
            confirmButton: 'btn btn-primary',
            cancelButton: 'btn btn-label-secondary'
          },
          buttonsStyling: false
        }).then(function (result) {
          if (result.value) {
            window.location = 'patientregistry';
          }
        });
    });   

    $("#btn-save").click(function () {
        let requiredFields = [
            { id: "#firstname", label: "First Name" },
            { id: "#lastname", label: "Last Name" },
            { id: "#mi", label: "Middle Initial" },
            { id: "#birthdate", label: "Date of Birth" },
            { id: "#gender", label: "Gender" }
        ];

        let emptyFields = [];
        requiredFields.forEach(function (field) {
            let value = $(field.id).val();

            if (!value || value.trim() === '') {
                emptyFields.push(field.label);
            }
        });

        if (emptyFields.length > 0) {
            Swal.fire({
                title: 'Required Fields Missing',
                icon: 'warning',
                html: '<div style="text-align:left;margin-left:20px;">' +
                      '<p>The following fields are required:</p>' +
                      '<ul>' +
                      emptyFields.map(f => `<li>${f}</li>`).join('') +
                      '</ul></div>',
                confirmButtonText: 'OK',
                customClass: {
                    confirmButton: 'btn btn-primary'
                },
                buttonsStyling: false
            });
            return;
        }

        Swal.fire({
          title: 'Save new patient?',
          icon: 'question',
          showCancelButton: true,
          confirmButtonText: 'Yes',
          customClass: {
            confirmButton: 'btn btn-primary',
            cancelButton: 'btn btn-label-secondary'
          },
          buttonsStyling: false
        }).then(function (result) {
          if (result.value) {
            savePatient();
          }
        });
    });

    function newPatient(){
        $("#firstname").val('');
        $("#lastname").val('');
        $("#mi").val('');
        $("#extension").val('');
        $("#birthdate").val('')
        $("#gender").val('');
        $("#nationality").val('').trigger('change');
        $("#email").val('');
        $("#mobile").val('');
        $("#alternate").val(''); 
        $("#address").focus();
        $("#encodedby").focus();
    }

    function savePatient(){
        let trans_type = $("#trans_type").val();
        let encodedby = $("#encodedby").val();

        let firstname = $("#firstname").val();
        let lastname = $("#lastname").val();
        let mi = $("#mi").val();
        let extension = $("#extension").val();
        let birthdate = $("#birthdate").val();
        let gender = $("#gender").val();
        let nationality = $("#nationality").val();
        let email = $("#email").val();
        let patientid = $("#patientid").val();
        let mobile = $("#mobile").val();
        let alternate = $("#alternate").val();




        let address = $("#address").val();
            if (birthdate !== "") {
            let parts = birthdate.split("/");
            birthdate = parts[2] + "-" + parts[0] + "-" + parts[1];
        }

        let patient = new FormData();
        patient.append("trans_type", trans_type);
        patient.append("encodedby", encodedby);
        patient.append("firstname", firstname);
        patient.append("lastname", lastname);
        patient.append("mi", mi);
        patient.append("extension", extension);
        patient.append("nationality", nationality);
        patient.append("gender", gender);
        patient.append("birthdate", birthdate);
        patient.append("patientid", patientid);
        patient.append("mobile", mobile);
        patient.append("alternate", alternate);
        patient.append("email", email);
        patient.append("address", address);

        $.ajax({
            url:"ajax/patient_save_record.ajax.php",
            method: "POST",
            data: patient,
            cache: false,
            contentType: false,
            processData: false,
            dataType:"text",
            success:function(answer){
                let patientid = answer;
                if (patientid != 'error' && patientid != 'existing'){
                 Swal.fire({
                      title: 'Patient details successfully saved!',
                      icon: 'success',
                      confirmButtonText: 'Got it',
                      customClass: {
                        confirmButton: 'btn btn-success waves-effect waves-light'
                      },
                      buttonsStyling: false
                  }).then(function (result) {
                      if (result.value) {
                          window.location = 'patientregistry';
                      }
                  });
                }
            },
            error: function () {
                Swal.fire({
                    title: 'Oops. Something went wrong!',
                    icon: 'error',
                    confirmButtonText: 'Got it',
                    customClass: {
                      confirmButton: 'btn btn-danger waves-effect waves-light'
                    },
                    buttonsStyling: false
                });
            }
        });
    }
});
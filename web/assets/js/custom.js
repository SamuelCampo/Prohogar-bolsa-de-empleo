$(document).ready(function() {
    //set initial state.

    

    var $select = $('#backendbundle_curriculum_vivienda');
    var $input1 = $('#backendbundle_curriculum_tiempoarriendo');
    //var $input2 = $('#txtFechaCancela'); 

    $select.on('change', function () {
        if ($select.val() === "2") {
            $input1.prop("readonly", false);
        }else{
            $input1.prop("readonly", true);
        } 
    });

    $("#backendbundle_curriculum_discapacidad").click(function () {
        if ($(this).is(':checked')) {
            $('#backendbundle_curriculum_tipoDiscapacidad').attr("readonly", false);
            $('#backendbundle_curriculum_porcentajeDiscapacidad').attr("readonly", false);
            
        } else if ($(this).not(':checked')) {
            //var ok = confirm('Are you sure you want to remove all data?');
            //if (ok) {
                var remove = '';
                $('#backendbundle_curriculum_tipoDiscapacidad').val('');
                $('#backendbundle_curriculum_tipoDiscapacidad').attr("readonly", true);
                $('#backendbundle_curriculum_porcentajeDiscapacidad').val('');
                $('#backendbundle_curriculum_porcentajeDiscapacidad').attr("readonly", true);
            //}
        }
    });

    $("#backendbundle_curriculum_tieneHijos").click(function () {
        if ($(this).is(':checked')) {
            $('#backendbundle_curriculum_hijos').attr("readonly", false);
            $('#backendbundle_curriculum_detalleHijos').attr("readonly", false);

        } else if ($(this).not(':checked')) {
            //var ok = confirm('Are you sure you want to remove all data?');
            //if (ok) {
            var remove = '';
            $('#backendbundle_curriculum_hijos').val('');
            $('#backendbundle_curriculum_hijos').attr("readonly", true);
            $('#backendbundle_curriculum_detalleHijos').val('');
            $('#backendbundle_curriculum_detalleHijos').attr("readonly", true);
            //}
        }
    });


    $("#backendbundle_curriculum_conducir").click(function () {
        if ($(this).is(':checked')) {
            $('#backendbundle_curriculum_licencia').attr("readonly", false);
            $('#backendbundle_curriculum_licenciasimagenesFile').attr("readonly", false);
            
        } else if ($(this).not(':checked')) {
            //var ok = confirm('Are you sure you want to remove all data?');
            //if (ok) {
            var remove = '';
            $('#backendbundle_curriculum_licencia').val('');
            $('#backendbundle_curriculum_licencia').attr("readonly", true);
            $('#backendbundle_curriculum_licenciasimagenesFile').val('');
            $('#backendbundle_curriculum_licenciasimagenesFile').attr("readonly", true);
            //}
        }
    });

});
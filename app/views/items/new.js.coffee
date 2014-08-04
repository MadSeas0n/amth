$('#modal_dialog').html("<%= escape_javascript(render 'new') %>")
$('#modal_dialog').modal("show")
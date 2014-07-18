# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    $('#items').dataTable
        "sPaginationType": "full_numbers"
        "bJQueryUI": true
    

    $('#btn').button()
    $('#btn_back').button( icons:  {primary: 'ui-icon-arrowreturnthick-1-w', secondary: null} );
    


    $('#btn_ok').each -> 
        $(this).replaceWith '<button type="' + $(this).attr('type') + '">' + $(this).val() + '</button>'
    $('button:submit').button( icons:  {primary: 'ui-icon-check', secondary: null} )

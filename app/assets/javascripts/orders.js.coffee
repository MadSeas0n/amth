# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    $('#orders').dataTable
        "sPaginationType": "full_numbers"
        "bJQueryUI": true
    $('#price_field').css('color', 'gray')    
    $('#edit_button').click ->
        alert("При изменении цены, не забудте указать причину в комментариях!")
        $('#price_field').css('color', 'black')
        $("#price_field").removeAttr('readonly')
        $("#price_field").focus() ->
            this.select() 
jQuery ->
    $('#tabs').tab()                  


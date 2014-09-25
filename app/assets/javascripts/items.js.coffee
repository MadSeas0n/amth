# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $("table#items").dataTable
    bJQueryUI: true
    sPaginationType: "full_numbers"
    bLengthChange: true
    aLengthMenu: [[25, 50, 100, -1], [25, 50, 100, "Все записи"]]
    sDom: "<\"H\"Tfrl>t<\"F\"ip>"
    oTableTools:
      aButtons: [
        "print"
        {
          sExtends: "copy"
          sButtonText: "Copy"
          oSelectorOpts:
            filter: "applied"
        }
        {
          sExtends: "collection"
          sButtonText: "Save <span class=\"caret\" />"
          aButtons: [
            {
              sExtends: "csv"
              sButtonText: "CSV"
              oSelectorOpts:
                filter: "applied"
            }
            {
              sExtends: "xls"
              sButtonText: "Excel"
              oSelectorOpts:
                filter: "applied"
            }
            {
              sExtends: "pdf"
              sButtonText: "PDF"
              oSelectorOpts:
                filter: "applied"
            }
          ]
        }
      ]

  return
jQuery ->
    $('#tabs').tab()    
    

   
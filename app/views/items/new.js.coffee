$('#modal_dialog').html("<%= escape_javascript(render 'new') %>")
$('#modal_dialog').modal("show")

jQuery ->
	$("input:submit").click ->		
		$("#item_purchase_kg_rur").val(($("#item_purchase_kg_usd").val())*33)
		$("#item_shipping_kg_rur").val(($("#item_shipping_kg_usd").val())*33)
		$("#item_purachse_per_item_usd").val(($("#item_purchase_kg_usd").val())*($("#item_weight").val()))
		$("#item_purachse_per_item_rur").val(($("#item_purchase_kg_rur").val())*($("#item_weight").val()))
		$("#item_shipping_per_item_usd").val(($("#item_shipping_kg_usd").val())*($("#item_weight").val()))
		$("#item_shipping_per_item_rur").val(($("#item_shipping_kg_rur").val())*($("#item_weight").val()))	
		$("#item_self_cost_usd").val(parseFloat($("#item_shipping_per_item_usd").val()) + parseFloat($("#item_purachse_per_item_usd").val()))
		$("#item_self_cost_rur").val(parseFloat($("#item_shipping_per_item_rur").val()) + parseFloat($("#item_purachse_per_item_rur").val()))
		$("#item_sale_cost").val(parseFloat(($("#item_self_cost_rur").val())*3))
		$("#item_sale_cost_final").val(parseFloat(($("#item_sale_cost").val())*1.3))

				
		


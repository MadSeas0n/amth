$('#modal_dialog').html("<%= escape_javascript(render 'new') %>")
$('#modal_dialog').modal("show")

jQuery ->
	dollar=prompt('Введите курс доллара')
	$("#item_weight, #item_purchase_kg_usd, #item_shipping_kg_usd").keyup ->		
		$("#item_purchase_kg_rur").val(($("#item_purchase_kg_usd").val())*dollar)
		$("#item_shipping_kg_rur").val(($("#item_shipping_kg_usd").val())*dollar)
		$("#item_purachse_per_item_usd").val((($("#item_purchase_kg_usd").val())*($("#item_weight").val())).toFixed(2))
		$("#item_purachse_per_item_rur").val((($("#item_purchase_kg_rur").val())*($("#item_weight").val())).toFixed(2))
		$("#item_shipping_per_item_usd").val((($("#item_shipping_kg_usd").val())*($("#item_weight").val())).toFixed(2))
		$("#item_shipping_per_item_rur").val((($("#item_shipping_kg_rur").val())*($("#item_weight").val())).toFixed(2))	
		$("#item_self_cost_usd").val((parseFloat($("#item_shipping_per_item_usd").val()) + parseFloat($("#item_purachse_per_item_usd").val())).toFixed(2))
		$("#item_self_cost_rur").val((parseFloat($("#item_shipping_per_item_rur").val()) + parseFloat($("#item_purachse_per_item_rur").val())).toFixed(2))
		$("#item_sale_cost").val((parseFloat(($("#item_self_cost_rur").val())*3)).toFixed(2))
		$("#item_sale_cost_final").val((parseFloat(($("#item_sale_cost").val())*1.3)).toFixed(2))





	$("#btn_ok").click ->		
		$('#modal_dialog').modal("hide")
		$("#items").fnReloadAjax()


				
		


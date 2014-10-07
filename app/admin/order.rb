ActiveAdmin.register Order do

  index do
    selectable_column
    id_column
    column :comments
    column :payment_type
    column :total
    column :created_at
    column :store
    column :order_items do |order|
      order.order_items.each do |elm|
        li(elm)
      end
    end
    column :order_suppliers do |order|
      order.order_suppliers.each do |sup|
        li(sup)
      end
    end
    actions
  end

  filter :payment_type, as: :select
  filter :store, as: :select
  filter :created_at
  filter :order_items
  filter :order_suppliers, as: :select
  
  show do |order|
    attributes_table do
      row :order_items do |n|
        order.order_items.map.join("<br />").html_safe
      end
    end        
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end

ActiveAdmin.register SoldItem do

  index do
    #selectable_column
    column :created_at
    column :lcode
    column :title
    column :price
    column :supplier
    column :order_number
  end

  filter :created_at
  #filter :item, as: :select
  filter :supplier, as: :select
  filter :lcode, as: :select

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

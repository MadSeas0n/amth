# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.delete_all

Item.create!(
	lcode: 1568,
    title: 'Amethyst',
    description: %{Amethyst from Brasil},
    price: 1500,
    img_url: 'amethyst.png',	
    weight: 1.5,
    supplier: 'ARK',
    purchase_kg_usd: 40,
    purchase_kg_rur: 1200,
    shipping_kg_usd: 5,
    shipping_kg_rur: 150,
    purachse_per_item_usd: 120,
    purachse_per_item_rur: 3450,
    shipping_per_item_usd: 1254,
    shipping_per_item_rur: 3254,
    self_cost_usd: 123,
    self_cost_rur: 321,
    sale_cost: 1524,
    sale_cost_final: 12345,
	)
#...
Item.create!(
	lcode: 2463,
    title: "Citrine",
    description: %{Citrine from Madagascar},
    price: 800,	
    img_url: "citrine.png"
	)
#...
Item.create!(
	lcode: 1421,
    title: "Quartz",
    description: %{Just quartz...},
    price: 500,	
    img_url: "quartz.png"
	)
#...
Item.create!(
	lcode: 0124,
    title: "Morion",
    description: %{Beautiful, black},
    price: 2300,	
    img_url: "morion.png"
	)
#...
Item.create!(
	lcode: 1674,
    title: "Agate ring",
    description: %{Agate ring from China},
    price: 200,	
    img_url: "agate.png"
	)
#...
Item.create!(
	lcode: 2424,
    title: "Trilobite",
    description: %{Order Asaphida},
    price: 3000,	
    img_url: "trilo.png"
	)
#...
Item.create!(
    lcode: 1765,
    title: "Ammonite",
    description: %{300 mil years old },
    price: 2750,    
    img_url: "ammo.png"
    )
#...
Item.create!(
    lcode: 2745,
    title: "Megalodon's tooth",
    description: %{Big tooth},
    price: 7800,    
    img_url: "tooth.png"
    )
#...
Item.create!(
    lcode: 0134,
    title: "Mammoth's tooth",
    description: %{Big Mammoth's tooth},
    price: 36000,    
    img_url: "tooth2.png"
    )
#...
Item.create!(
    lcode: 1424,
    title: "Wyoming Fish",
    description: %{Small fish},
    price: 3100,    
    img_url: "fish.png"
    )
#...
Item.create!(
    lcode: 1374,
    title: "Wyoming Fish #2",
    description: %{Big fish},
    price: 6700,    
    img_url: "fish2.png"
    )
#...

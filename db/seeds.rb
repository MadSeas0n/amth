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
    description: %{<p>
        Amethyst from Brasil
    	</p>},
    price: 1500,
    img_url: 'amethyst.png'	
	)
#...
Item.create!(
	lcode: 2463,
    title: "Citrine",
    description: %{"
        Citrine from Madagascar
    	"},
    price: 800,	
    img_url: "citrine.png"
	)
#...
Item.create!(
	lcode: 1421,
    title: "Quartz",
    description: %{"
        Just quartz...
    	"},
    price: 500,	
    img_url: "quartz.png"
	)
#...
Item.create!(
	lcode: 0124,
    title: "Morion",
    description: %{"
        Beautiful, black
    	"},
    price: 2300,	
    img_url: "morion.png"
	)
#...
Item.create!(
	lcode: 1674,
    title: "Agate ring",
    description: %{"
        Agate ring from China
    	"},
    price: 200,	
    img_url: "agate.png"
	)
#...
Item.create!(
	lcode: 2424,
    title: "Trilobite",
    description: %{"
        Order Asaphida
    	"},
    price: 3000,	
    img_url: "trilo.png"
	)
#...
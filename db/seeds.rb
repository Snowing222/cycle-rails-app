# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
DesignPartner.delete_all
ProductionPartner.delete_all
ManufacturerPartner.delete_all

xue = DesignPartner.create(name:"xue",phone:"11111111111",email:"xue@gmail.com",title:"designer")
stella = DesignPartner.create(name:"stella",phone:"11111111112",email:"stella@gmail.com",title:"designer")
alice = DesignPartner.create(name:"alice",phone:"11111111113",email:"alice@gmail.com",title:"designer")

anj = ProductionPartner.create(name:"anj",phone:"21111111111",email:"anj@gmail.com",title:"production manager",password_digest:"pw")
elsa = ProductionPartner.create(name:"elsa",phone:"21111111111",email:"elsa@gmail.com",title:"production manager",password_digest:"pw")

fall_fashion = ManufacturerPartner.create(name:"Fall fashion", address:"China")
summer_fashion = ManufacturerPartner.create(name:"Summer fashion", address:"China")
LA_fashion = ManufacturerPartner.create(name:"LA fashion", address:"USA")

skirt = Product.new(style_number: "001")
skirt.production_partner=anj
skirt.design_partner=xue
skirt.manufacturer_partner=LA_fashion
skirt.save






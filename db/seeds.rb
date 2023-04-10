puts "🌱 Seeding spices..."
# Seed your database here
ShoeStore.create(name:"Dr.Martens", address: "Kenwood Mall", total_inventory: 0)
ShoeStore.create(name:"Nike", address: "Monroe Outlets")
Shoe.create(name:"1460", style: "boot", price: 170, color: "black", shoe_store_id:ShoeStore.id_by_name("Dr.Martens"))
Shoe.create(name:"Jadon", style: "boot", price: 200, color: "black", shoe_store_id:ShoeStore.id_by_name("Dr.Martens"))
Shoe.create(name:"1461", style: "loafer", price: 130, color: "beige", shoe_store_id:ShoeStore.id_by_name("Dr.Martens"))
Shoe.create(name:"Airforce 1", style: "sneaker", price:110, color:"white",shoe_store_id:ShoeStore.id_by_name("Nike"))

puts "✅ Done seeding!"

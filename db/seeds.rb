# for each category of the array CATEGORY = %w(chinese italian japanese french belgian) do
# create a Restrautent where the category is the category just created


# CATEGORY = %w(chinese italian japanese french belgian)

Restaurant.destroy_all

# 10.times do
#   Restaurant.create(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.street_address,
#     phone_number: Faker::PhoneNumber.phone_number,
#     category: Restaurant::CATEGORY.sample
#   )
# end

Restaurant::CATEGORY.each do |category|
  10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category
  )
  end
end
puts "Created #{Restaurant.count} restaurants"


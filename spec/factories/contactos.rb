require 'faker'

FactoryGirl.define do
  factory :contacto do
    nombre { Faker::Name.name}
    telefono { Faker::PhoneNumber.phone_number}
    email { Faker::Internet.email}
    mensaje { Faker::Lorem.paragraph}
  end
end

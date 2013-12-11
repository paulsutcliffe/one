#coding: utf-8
require 'factory_girl'

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

DatabaseCleaner.clean

FactoryGirl.create :admin

FactoryGirl.create :usuario

12.times do
  FactoryGirl.create :evento
end

5.times do
  FactoryGirl.create :auspiciador
end

2.times do
  FactoryGirl.create :mix
end

12.times do
  FactoryGirl.create :contacto
end

#coding: utf-8
require 'faker'

FactoryGirl.define do
  factory :evento do
    titulo "Fiesta de Inaguración de ONE by Bach"
    flyer { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','flyer.jpg'))}
    fecha "2013-12-14"
    link "http://www.kosmyka.com"
  end
end

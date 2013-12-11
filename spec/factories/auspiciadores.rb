# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :auspiciador do
    logo { Rack::Test::UploadedFile.new(File.join(Rails.root,'spec','support','logo.png'))}
    link "http://www.kosmyka.com"
  end
end

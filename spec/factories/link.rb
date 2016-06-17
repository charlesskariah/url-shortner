require 'faker'

FactoryGirl.define do
  factory :link do |f|
    f.outgoing_url {Faker::Internet.url}
  end
end
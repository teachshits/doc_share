#coding: utf-8

require 'machinist/active_record'

Category.blueprint {
  title { Faker::Lorem.word }
  description { Faker::Lorem.paragraph }
}

Document.blueprint {
  title { Faker::Lorem.words }
  description { Faker::Lorem.paragraph }
}
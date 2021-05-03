# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.create(title: "Mortal Kombat", video_url: "secret")

Plan.create(name: "Small", stripe_price_id: "price_1Ijb2WDXobRpcK7sewm9ZT71", stripe_id: "prod_JMJfS5IAJXcJ41", amount: 25_00, interval: "month")
Plan.create(name: "Small", stripe_price_id: "price_1Ijb3fDXobRpcK7siYcTzSMB", stripe_id: "prod_JMJhwRjwqFI5gS", amount: 250_00, interval: "year")
Plan.create(name: "Large", stripe_price_id: "price_1Ijb4fDXobRpcK7shsMyPWtp", stripe_id: "prod_JMJi7tfTkjxms2", amount: 100_00, interval: "month")
Plan.create(name: "Large", stripe_price_id: "price_1Ijb4FDXobRpcK7sCpY5AKYX", stripe_id: "prod_JMJhFFrpDJzhmg", amount: 1000_00, interval: "year")
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |topic|
  Topic.create!(
           title: topic
  )
end
puts '5 topics created'
10.times do |blog|
  Blog.create!(
          title: "Blog no #{blog+1}",
          body: "Donec id elit non mi porta gravida at eget metus.
                  Integer posuere erat a ante venenatis dapibus posuere velit aliquet.
                  Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                   Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                  Lorem ipsum dolor sit amet, consectetur adipiscing elit",
          topic_id: Topic.last.id
  )
end

puts '10 blog created'
5.times do |skill|
  Skill.create!(
      title: "Skill no#{skill+1}",
      percent: 15+skill
  )
end

puts '5 skill created'

7.times do |p_item|
  Portfolio.create!(
      title: "titile no#{p_item+1}",
      subtitle: "subtitle no#{p_item+1}",
      body: "sjfasdsda;das salknasnfdlasnflasflnxcvkcvxcvcxvjcxv xcjvnxcvnxcljv  ocxvncxnvcxvncxvsdsvcx",
      main_image: "http://placehold.it/600x400",
      thumbnail_image: "http://placehold.it/350x200"
  )
end


puts '7 portfolio items created'


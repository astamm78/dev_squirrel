20.times do

  post = Post.create(  :title => Faker::Lorem.sentence,
                       :body => Faker::Lorem.paragraph)

  2.times do

    Tag.create( :tag => Faker::Lorem.word,
                :tagable_type => post.class.to_s,
                :tagable_id => post.id)

  end

end
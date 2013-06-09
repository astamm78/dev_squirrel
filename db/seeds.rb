Post.delete_all
Tag.delete_all

20.times do

  post = Post.create(  :title => Faker::Lorem.sentence,
                       :body => Faker::Lorem.paragraph)

  2.times do

    post.tags.create( :tag => Faker::Lorem.word)

  end

end
include RandomData

#Create posts
50.times do

  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all


100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

#Advertisement
50.times do

  Advertisement.create!(
    title: RandomData.random_word,
    copy: RandomData.random_paragraph,
    price: (10)
  )
end
advertisements = Advertisement.all
 puts "Seed 2 finished"
 puts "#{Advertisement.count} Ads created"

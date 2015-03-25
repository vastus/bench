Comment.delete_all
Article.delete_all

99.times do
  t = Time.now + rand(-999999..-9990)

  a = Article.create!(
    :title => Faker::Lorem.sentence(4, false, 8),
    :content => Faker::Lorem.paragraph(12, false, 21),
    :created_at => t,
    :updated_at => t
  )

  (rand(9) + 2).times do
    a.comments.create!(
      :body => Faker::Lorem.paragraph(2, false, 9)
    )
  end
end


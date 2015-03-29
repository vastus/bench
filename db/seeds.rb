Comment.delete_all
Article.delete_all

99.times do
  t = Time.now + rand(-999999..-9990)
  ps = []

  (rand(4) + 1).times do
    ps << Faker::Lorem.paragraph(7, false, 21)
  end

  a = Article.create!(
    :title => Faker::Lorem.sentence(4, false, 8),
    :content => ps.join("\n\n"),
    :created_at => t,
    :updated_at => t
  )

  (rand(9) + 2).times do
    a.comments.create!(
      :body => Faker::Lorem.paragraph(2, false, 9)
    )
  end
end


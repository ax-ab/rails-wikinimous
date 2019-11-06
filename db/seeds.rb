
Article.destroy_all

puts "Creating 10 fake articles"

10.times do
  title = Faker::DcComics.title
  content = Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 50)

  article = Article.new(title: title, content: content)
  article.save!
end

puts "Done creating 10 fake articles"


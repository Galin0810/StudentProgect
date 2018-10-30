User.delete_all
Article.delete_all
Tag.delete_all

User.create!(
  email: 'adminuser@ukd.com',
  password: '12345678',
  first_name: 'admin',
  last_name: 'admin',
  admin: true
)

# Photo

def image_upload(file_name)
  File.open(File.join(Rails.root, "app/assets/images/#{file_name}"))
end

def article_photo
  Photo.new(
    title: Faker::Company.name,
    photo: image_upload('article_photo.jpg')
  )
end

# Video

def article_video
  Video.new(
    title: Faker::Company.name,
    youtube_link: 'yUd0sS3uJsc'
  )
end

# Tag

7.times do
  Tag.create!(
    title: Faker::Dune.title
  )
end

@tags = Tag.all

# Article

10.times do
  Article.create!(
    title: Faker::Company.name,
    date: Faker::Time.between(10.days.ago, Date.today, :all),
    content: Faker::Company.catch_phrase,
    photos: [article_photo, article_photo],
    videos: [article_video],
    tags: @tags.sample(2)
  )
end

# Events

5.times do
  Event.create!(
    title: Faker::Company.name,
    content: Faker::Company.catch_phrase,
    date: Faker::Time.between(10.days.ago, Date.today, :all),
    photos: [article_photo, article_photo]
  )
end

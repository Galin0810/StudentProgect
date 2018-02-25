
User.delete_all

User.create!(
  email: 'admin@ukd.eu',
  password: '12345678',
  first_name: 'admin',
  last_name: 'admin',
  admin: true
)

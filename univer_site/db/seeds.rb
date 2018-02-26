User.delete_all

User.create!(
  email: 'adminuser@ukd.com',
  password: '12345678',
  first_name: 'admin',
  last_name: 'admin',
  admin: true
)
# Repetition

Repetition is the father of learning. This is web app that can:
- [x] Sign in, log in and etc (authorization)
- [ ] Create exercise and question (Only administrator)
- [ ] Have user do the exercise and answer all question
- [ ] Present data in grahpic in dashboard user (in the future)

## Requirement
- Rails 5
- Bootstrap
- MySQL (but in the mean time, i still using SQLite3)

## To Run The App
- Install bundler (if you not have that)
```ruby
gem install bundler
```

- Run bundler
```ruby
bundle install
```

- Run database migration and seed
```ruby
rails db:create
rails db:migrate
rails db:seed
```

- Start rails server (change the port if you want, i set it to 5000)
```ruby
rails s -p 5000
```

- Sign in using generated user
`email: admin@repetition.com, password: password`

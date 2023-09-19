# Blog2(rubyschool)


### "Выпускной" проект по итогам курса [Rubyschool](https://rubyschool.us/) (Темы: Rails, Devise, i18n, Rspec)


* Ruby version 3.1.2p20
* Rails version 7.0.7


## Start project

1. Install gems:

```bash
bundle install
```

2. Migrate:

```bash
rake db:migrate
```

3. Run RoR application:

```bash
rails s
```

4. Open in your browser: 
```bash
http://localhost:3000/
```

5. Add admin user with("..." - your data):
```bash
rails console
User.create(email: '...', username: '...', password: '...', password_confirmation: '...', admin: true)
```

Применялось:
-
* Генераторы: scaffold, controller, migration, devise
* Ассоциации: polymorphism, 1 to many. Комменарии принадлежат и полиморфному commentable и user(devise). Комменты имеют 2 вида маршрутов: независимые resourses, вложенные в posts и images для create, comments#create обрабатывает в соответствии с тем из какого вида пришла форма.
* Пользователи(Devise) могут иметь роли: админа, зарегистрированного пользователя и гостя. Роли имеют разный доступ.
* Bootstrap 5 + CSS
* i18n: English, Русский.
* Тесты: Rspec, Shoulda-matchers, Factory Bot, Capybara



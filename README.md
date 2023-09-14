# Blog2(rubyschool)

Ruby, Rails, Devise, i18n, Rspec.

"Выпускной" учебный проект по итогам курса [Rubyschool](https://rubyschool.us/)


* Ruby version 3.1.2p20


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
* Ассоциации: polymorphism, 1 to many. Комменты принадлежат и полиморфному commentable и юзеру(devise)
* Комменты имеют 2 вида маршрутов: как независимые resourses, так и вложенные в posts и images для create,comments#create обрабатывает в соответствии с тем из какого вида пришла форма.
* Юзеры могут иметь роли: админа, зарегистрированного пользователя и гостя. Роли имеют разный доступ.
* Bootstrap 5 + CSS
* i18n: English, Русский.



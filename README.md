# Blog2(rubyschool)

Ruby, Rails, Devise, Rspec.

["Выпускной" учебный проект по итогам курса Rubyschool](https://rubyschool.us/)

Учебный проект по итогам курса Rubyschool для обобщения и закрепления пройденного материала по темам: 


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

4. Open in your browser: http://localhost:3000/

5. Add admin user with("..." - your data):
```bash
rails console
User.create(email: '...', username: '...', password: '...', password_confirmation: '...', admin: true)
```

Применялось:
-
* Генераторы: scaffold, controller, migration, devise
* Ассоциации: polymorphism, 1 to many. Комменты принадлежат и полиморфному commentable и юзеру(devise)
* Комменты имеют 2 вида маршрутов: обычные resourses; вложенные в posts и images для create, соотв экшен create контроллера comment обрабатывает в соотв с тем из какого вида пришла форма.
* Есть возможность назначить админа, который имеет расширеные права и доступ к различной статистике
* Bootstrap 5 + CSS



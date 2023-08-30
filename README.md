# Blog2(rubyschool)

Ruby, Rails, Devise, Rspec.

[Учебный проект на Ruby/Rails c курса Rubyschool](https://rubyschool.us/)

For scaffolding and polymorphism training


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

Дополнено/изменено:
-
* Bootstrap 5
* Комменты имеют 2 вида маршрутов, обычные resourses и вложенные в posts и images для create, соотв экшен create контроллера comment различает из какого вида пришла форма и обрабатывает в соотв с этим.
* Комменты принадлежат и полиморфному commentable и юзеру(devise)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ToDo:: реализовать автозагрузку пользователей

admin = Staff::Admin.new(
    :email                 => "admin@admin.com",
    :password              => "qwerty123",
    :password_confirmation => "qwerty123"
)
admin.skip_confirmation!
admin.save!
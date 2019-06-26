# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Inciando cadastro de tipos de contatos"

Kind.create!([{description: "Amigo"},
              {description: "Familiar"},
              {description: "Trabalho"}])

puts "cadastro de tipos de contatos finalizado com sucesso!"

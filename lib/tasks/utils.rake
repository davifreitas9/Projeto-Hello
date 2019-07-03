namespace :utils do
  desc "Dados para preenchimento do banco"
  task seed: :environment do


      puts "Cadastrando contatos"

      100.times do |i|
        Contact.create!(
          name: Faker::Name.name,
          email: Faker::Internet.email,
          kind: Kind.all.sample,
          rmk: Faker::Lorem.paragraph([1,2,3,4,5].sample)
        )
      end

      puts "Contatos cadastrados com sucesso"


      puts "Cadastrando endereços"

      Contact.all.each do |contact|
        Address.create!(
          street: Faker::Address.street_address,
          city: Faker::Address.city,
          state: Faker::Address.state,
          contact: contact
        )
      end

      puts "Cadastro de endereços completo com sucesso!"


      puts "cadastrando telefones"

      Random.rand(1..5).times do |i|
        Contact.all.each do |contact|
            Phone.create!(
              phone: Faker::PhoneNumber.phone_number,
              contact: contact
            )
        end
      end

      puts "Telefones cadastrados com sucesso!"

  end

end

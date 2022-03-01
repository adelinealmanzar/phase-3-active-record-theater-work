puts "Seeding..."

Audition.delete_all
Role.delete_all

Faker

3.times do
    role = Role.create(
        character_name: Faker::TvShows::Simpsons.character
    )

    3.times do 
        audition = Audition.create(
            actor: Faker::Name.name,
            location: Faker::Address.city,
            phone: 5555555,
            hired: [true, false].sample,
            role_id: role.id
        )   
    end 
end

puts "Done seeding!"
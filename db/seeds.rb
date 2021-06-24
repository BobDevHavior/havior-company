require 'faker'

User.destroy_all
DataBase.destroy_all

User.create!(email: 'admin@example.com', password: 'azerty', password_confirmation: 'azerty', admin: true)
User.create!(email: 'jonathan.serafini@gmail.com', password: 'azerty', password_confirmation: 'azerty', admin: true)

PASSWORDS = [
    "123456",
    "123456789",
    "azerty",
    "qwerty",
    "1234561",
    "loulou",
    "doudou",
    "marseille",
    "azertyuiop",
    "12345678",
    "password",
    "soleil"
]

JOBS = [
    "Commercial",
    "Développeur",
    "Chef de produits",
    "Chef de projets",
    "Chargé.e de communication",
    "Responsable administratif",
    "assistant au ressources humaines",
]

HOBBIES = [
    "cheval",
    "natation",
    "football",
    "aviation",
    "peinture",
    "piano"
]

12.times do |i|
    first_name = i.odd? ? Faker::Name.female_first_name : Faker::Name.male_first_name
    last_name = Faker::Name.last_name
    nick_name = first_name.downcase + last_name[0].upcase
    email = "#{first_name}.#{last_name}@havior.co"
    User.create!(
        nick_name: nick_name,
        first_name: first_name,
        last_name: last_name,
        email: email,
        job: JOBS.sample,
        hobby: HOBBIES.sample,
        years: rand(2..20),
        password: PASSWORDS[i],
        pwd: PASSWORDS[i],
        hacked: false,
        admin: false,
        position: i + 1,
        employee: true,
        senior: rand(0..1).zero?
    )
    puts "User #{i+1}"
end

puts "User done!"

DataBase.create!(
    url: "https://www.havior.co", 
    port: "5432", 
    user: "admin", 
    name: "havior_data_base", 
    db_password: "password")

puts "Data base done!"
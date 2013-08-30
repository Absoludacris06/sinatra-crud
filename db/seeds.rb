20.times do
	Note.create(title: Faker::Company.name, content: Faker::Company.bs)
end
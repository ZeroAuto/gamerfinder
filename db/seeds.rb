# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create([
	{inquiry: 'When do you play'},
	{inquiry: 'What position do you want to your teammate to play'},
	{inquiry: 'What is your age range'},
	{inquiry: 'What time zone'}
])

users = User.create([
	{
		name: "MikeFTW",
		password: "password",
		email: "mike@mike.mike",
	},
	{
		name: "xXx_dasFremenator_xXx",
		password: "password",
		email: "fremen@fremen.fremen",

	},
	{
		name: "Daftstar",
		password: "password",
		email: "nik@nik.nik",
	},
	{
		name: "Yasmin",
		password: "password",
		email: "yaz@yaz.yaz",

	},
	{
		name: "Lynda",
		password: "password",
		email: "lynda@lynda.lynda",
	},
	{
		name: "Greg",
		password: "password",
		email: "greg@greg.greg",
	},
	{
		name: "Joe",
		password: "password",
		email: "joe@joe.joe",

	},
	{
		name: "Jesse",
		password: "password",
		email: "jesse@jesse.jesse",
	},
  {
		name: "Clay",
		password: "password",
		email: "clay@clay.clay",
	},
	{
		name: "Matt",
		password: "password",
		email: "matt@matt.matt"
	}
])

XboxGamerInfo.create([
	{
		gamertag: "daft star"
	},
	{
		gamertag: "metasplat"
	},
	{
		gamertag: "anthror"
	},
	{
		gamertag: "AlCapwn715"
	},
	{
		gamertag: "Clamstew"
	},
	{
		gamertag: "walkersmith07"
	}
])


Question.first.answers.create(choice: "morning")
Question.first.answers.create(choice: "afternoon")
Question.first.answers.create(choice: "evening")

Question.find(2).answers.create(choice: "assault")
Question.find(2).answers.create(choice: "engineer")
Question.find(2).answers.create(choice: "medic")

Question.find(3).answers.create(choice: "young")
Question.find(3).answers.create(choice: "middle-aged")
Question.find(3).answers.create(choice: "old")

Question.find(4).answers.create(choice: "Eastern")
Question.find(4).answers.create(choice: "Central")
Question.find(4).answers.create(choice: "Hawaiian")


users.each do |user|
  Response.create([
    {user: user, answer: Answer.find(Random.rand(1..3))},
    {user: user, answer: Answer.find(Random.rand(4..6))},
    {user: user, answer: Answer.find(Random.rand(7..9))},
    {user: user, answer: Answer.find(Random.rand(10..12))},
  ])
end



Comparison.quick_populate






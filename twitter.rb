# encoding: utf-8
require 'twitter'
require 'yaml'

oauth = YAML.load_file("oauth.yml")
twitter = Twitter::Client.new(oauth)

people = twitter.list_members('ruby').all
user = people[rand(people.length)]
screen_name = user.screen_name

array = []

percent = rand(101)

array << "the chance of rain: "
array << "the chance of you making it through the day: "
array << "the chance of eny thing coming from Mars: "
array << "the chance of a nice surprise: "
array << "the chance of fruit falling on your head: " 
array << "the chance of it being a holiday somewere: "
array << "the chance of a film happening in real life: "
array << "the chance of you playing poker: "
array << "the chance of you geting more than £1000 in one day: "

message = '@' + screen_name + " "
message += array[rand(array.length)]+percent.to_s + '%'

twitter.update(message)
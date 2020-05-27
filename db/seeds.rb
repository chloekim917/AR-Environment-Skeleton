Network.delete_all
Show.delete_all
Actor.delete_all

network1 = Network.create(call_letters: "HBO", channel: 4)

show1 = Show.create(name: "GoT", network: network1, day: "Sunday", genre: "drama", season: "season 7")
show2 = Show.create(name: "Office", network: network1, day: "Friday", genre: "comedy", season: "season 4")
show3 = Show.create(name: "Parks and Rec", network: network1, day: "Tuesday", genre: "comedy", season: "season 2")

actor1 = Actor.create(first_name: "Emilia", last_name: "Clark")

character1 = Character.create(name: "Daenerys Targaryen", actor: actor1, show: show1, catchphrase: "I will burn you")
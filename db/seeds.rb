# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
kyrie = Player.create(name: "Kyrie Irving", age: 25, team: "BOS", jersey: 11)
tatum = Player.create(name: "Jayson Tatum", age: 20, team: "BOS", jersey: 0)
horford = Player.create(name: "Al Horford", age: 32, team: "BOS", jersey: 42)

home_vs_brk = Game.create(date: DateTime.new(2018, 11, 25, 19, 30, 0), opponent: "BRK", home?: true)
away_vs_lal = Game.create(date: DateTime.new(2018, 11, 27, 22, 00, 0), opponent: "LAL", home?: false)

kyrie_a_lal = Boxscore.create(points: 32, rebounds: 4, assists: 8, player: kyrie, game: away_vs_lal)
kyrie_h_brk = Boxscore.create(points: 23, rebounds: 2, assists: 11, player: kyrie, game: home_vs_brk)
tatum_a_lal = Boxscore.create(points: 17, rebounds: 9, assists: 3, player: tatum, game: away_vs_lal)
tatum_h_brk = Boxscore.create(points: 26, rebounds: 12, assists: 4, player: tatum, game: home_vs_brk)
horford_a_lal = Boxscore.create(points: 11, rebounds: 14, assists: 8, player: horford, game: away_vs_lal)
horford_h_brk = Boxscore.create(points: 7, rebounds: 10, assists: 11, player: horford, game: home_vs_brk)

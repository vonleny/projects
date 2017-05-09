score = 0
player = ""
name = ""
good_ans = " is the correct answer."
music = {
			"rock" => { "band" => [ "This band is an American rock band from San Diego, California, originally called \n\"Mighty Joe Young\", changed its name after the band signed with Atlantic Records. \nDo you kown the band's name?: " ,
							  	 "The band found immediate success in 1993 upon releasing their debut album, \nCore (1992), and went on to become one of the most commercially successful bands \nof the 1990s.\nDo you know who they are?: ", 
							  	 "The original members consisted of Scott Weiland (lead vocals), brothers Dean (guitar) and Robert DeLeo (bass, backing vocals), and Eric Kretz (drums).\nDo you know who they are?: ",
							  	 "stone temple pilots"
							 	], 
				     "artist" => [ "Born in May 26, 1964 is an American singer, songwriter, record producer, and actor. \nHis \"retro\" style incorporates elements of rock, blues, soul, R&B, funk, jazz, \nreggae, hard rock, psychedelic, pop, folk, and ballads. \nDo you kown the artist's name?: ",
							   	   "He won the Grammy Award for Best Male Rock Vocal Performance four years in a row from 1999 to 2002, \nbreaking the record for most wins in that category as well as setting the record for \nmost consecutive wins in one category by a male artist.\nDo you know who he is?: ",
							   	   "In 1994, he won two Grammy's (Best solo song and Best solo rock vocal perfomance)\nfor his song \"Are you gonna go my way\". \nDo you know who he is?: ",
							   	   "lenny kravitz"
								 ]
				   	},
			"pop" => { "band" => [ "This band is an English pop band based in London,They were signed to Virgin Records \nand released their debut single in 1996, which hit number \none in 37 countries, and established them as a global phenomenon. \nDo you kown the band's name?: ",
							  	"Measures of their success include international record sales, a 2007–2008 reunion tour, \nunprecedented merchandising, record-breaking achievements, \niconic symbolism such as an \"Union Jack dress\", and a film. \nDo you know who they are?: ", 
			  				    "The group originally consisted of Melanie Brown, Melanie Chisholm, Emma Bunton, Geri Halliwell, and Victoria Beckham.\nDo you know who they are?: ",
			  				    "spice girls"
							  ] ,
						"artist" => [ "This artist is an English singer-songwriter, actor, guitarist and record producer. \nHe was born in Halifax, West Yorkshire, and raised in Framlingham, Suffolk. \nHe attended the Academy of Contemporary Music in Guildford, \nSurrey, as an undergraduate from the age of 18 in autumn 2009.\nDo you kown the band's name?: ",
								  "Sheeran's popularity abroad began in 2012. In the US, he made a guest appearance on \nTaylor Swift's fourth studio album, Red.[10] \"The A Team\" was nominated for \nSong of the Year at the 2013 Grammy Awards, \nwhere he performed the song with Elton John.\nDo you know who he is?: ",
								  "His single from x, \"Thinking Out Loud\", earned him two Grammy Awards at the 2016 ceremony: \nSong of the Year and Best Pop Solo Performance. As part of his world tour\n, He played three sold-out concerts at London's \nWembley Stadium in July 2015, his biggest solo shows to date.\nDo you know who he is?: ",
								  "ed sheeran"
							  	]
			 	   },
			"rap" => { "band" => [ ". \nDo you kown the band's name?: " ,
							  	". \nDo you know who they are?: ", 
							  	". \nDo you know who they are?: ",
							  	"outkast"
							 	], 
				    	"artist" => [ ". \nDo you kown the artist's name?: ",
							   	  ". \nDo you know who he is?: ",
							   	  ". \nDo you know who he is?: ",
							   	  " "
								 ]
					  },
			"latin" => { "band" => [ ". \nDo you kown the band's name?: " ,
							  	". \nDo you know who they are?: ", 
							  	". \nDo you know who they are?: ",
							  	" "
							 	], 
				      "artist" => [ ". \nDo you kown the artist's name?: ",
							   	  	". \nDo you know who he is?: ",
							   	  	". \nDo you know who he is?: ",
							   	  	" "
								  ]
			}
		}
system "clear"
puts "Welcome to Music Trivia!!!"
puts "Please enter your name: "
player = gets.chomp.downcase.capitalize!
puts "Please, #{player} select the music genre that you like: Rock, Pop, Rap, Latin: "
genre = gets.chomp.downcase
# puts genre.class
win_message = "That's right #{player}. Congratulations!!! \n"
puts "You have entered into the #{genre} vault. \nOne more thing #{player}, would you like to guess an Artist or a Band:  "
performer_type = gets.chomp.downcase
#p performer_type
puts music[genre][performer_type][3]
score = 10
puts " O.k. #{player} First question. For #{score} points!.\n"
puts music[genre][performer_type][0]
name = gets.chomp.downcase
	if name == music[genre][performer_type][3]
		puts win_message
		print music[genre][performer_type][3].upcase! 
		puts good_ans
	else 
		score = 5
		puts "Too bad #{player}, that's not the #{music[genre][performer_type].capitalize}. \nNow for #{score} points. "
		puts music[performer_type]["band"][1]
		name = gets.chomp.downcase
		if name == music[genre][performer_type][3]
			puts win_message
					print music[genre][performer_type][3].upcase! 
					puts good_ans
				else 
					score = 2
					puts "Wrong again #{music[genre][performer_type].capitalize}, #{player}. One last time for #{score} points. "		
					puts rock["band"][2]
					name = gets.chomp.downcase
					if name == music[genre][performer_type][3]
						puts win_message
						print music[genre][performer_type][3].upcase!
						puts good_ans
					else 
						score = 0
						puts "Wrong again #{player}. The #{music[genre][performer_type].capitalize}'s name is #{rock["band"][3].capitalize!}. Your final score is #{score} points. "
					end
				end
			end	
		
puts "Thanks for playing #{player.upcase}. \nYour final score is #{score} points."

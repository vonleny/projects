pc = ["rock", "paper", "scissors"]
i = 0
system "clear"
score_p1=0
score_p2=0
while i
	puts "Please choose Rock, Paper or Scissors: "
	player1 = gets.chomp.downcase
	player2 = pc.sample
	if player1 ==player2 
		puts "I choose #{player2}"
		puts "it's a draw"
	else
		if player1 == "paper" && player2 == "rock"
			puts "I choose #{player2}"
			puts "You win!!!"
			score_p1 += 1
		end
		if player1 == "rock" && player2 =="paper"
			puts "I choose #{player2}"
			puts "I win!!!"
			score_p2 += 1
		end
		if player1 == "scissors" && player2 =="paper"
			puts "I choose #{player2}"
			puts "You win!!!"
			score_p1 += 1
		end
		if player1 == "paper" && player2 =="scissors"
			puts "I choose #{player2}"
			puts "I win!!!"
			score_p2 +=1
		end
		if player1 == "rock" && player2 =="scissors"
			puts "I choose #{player2}"
			puts "You win!!!"
			score_p1 +=1
		end
		if player1 == "scissors" && player2 =="rock"
			puts "I choose #{player2}"
			puts "I win!!!"
			score_p2 +=1
		end
	end
	puts "Current Score: You : #{score_p1} wins, me #{score_p2} wins."
	puts "Want to end the game?; Yes o no: "
	answer =gets.chomp.downcase
	if answer == "yes"
		break
	end
	if answer == "y"
		break
	end
 end
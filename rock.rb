require "sinatra"


get "/rps/:throw" do
	com = ["Rock", "Paper", "Scissors"]
	cpu = com.sample
	if params[:throw] == "Paper" or params[:throw] == "paper" and cpu == "Paper"
		"You choose Paper, your opponent choose Paper, you tied"
	elsif params[:throw] == "Paper" or params[:throw] == "paper" and cpu == "Rock"
		"You choose Paper, your opponent choose Rock, You Win"
	elsif params[:throw] == "Paper" or params[:throw] == "paper" and cpu == "Scissors"
		"You choose Paper, your opponent choose Scissors, You Lose"
	elsif params[:throw] == "Rock" or params[:throw] == "rock" and cpu == "Rock"
		"You choose Rock, your opponent choose Rock, you tied"
	elsif params[:throw] == "Rock" or params[:throw] == "rock" and cpu == "Paper"
		"You choose Rock, your opponent choose Paper, You Lose"
	elsif params[:throw] == "Rock" or params[:throw] == "rock" and cpu == "Scissors"
		"You choose Rock, your opponent choose Scissors, You Win"
	elsif params[:throw] == "Scissors" or params[:throw] == "scissors" and cpu == "Rock"
		"You choose Scissors, your opponent choose Rock, You Lose"
	elsif params[:throw] == "Scissors" or params[:throw] == "scissors" and cpu == "Scissors"
		"You choose Scissors, your opponent choose Scissors, you tied"
	elsif params[:throw] == "Scissors" or params[:throw] == "scissors" and cpu == "Paper"
		"You choose Scissors, your opponent choose Paper, You Win"
	else 
		"Invalid play this is Rock Paper Scissors no spock no lizard no shoot no nothing else, cause of the I WINNNN!!!!!!!!!!!!! NOT YOU ME THE CPU I WIN!!!!!!!!!!!!!!"
	end
end
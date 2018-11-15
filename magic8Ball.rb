def response_array
  ["As I see it, yes", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don’t count on it", "It is certain", "It is decidedly so", "Most likely", "My reply is no", "My sources say no", "Outlook good", "Outlook not so good", "Reply hazy, try again", "Signs point to yes", "Very doubtful", "Without a doubt", "Yes", "Yes, definitely", "You may rely on it."]
end

def animate_array
  STDOUT.puts anim("\rConsulting the heavens...")
  sleep 2
  print response_array.sample + "\n"
  play_again
end

def anim(string)
  string.each_char do |n|
  print n
  charWait = rand(0.03..0.07)
  sleep(charWait)
  end
end

def play_again
	sleep(1.5)
	print "Need more answers?\n"
  user_choice = gets.chomp.downcase
  magic_8_ball unless ['n', 'no'].include?(user_choice)
end

def magic_8_ball
  system("clear")
  puts "What is your Magic 8 Ball question?"
  userQuestion = gets.chomp

  if userQuestion == "" || userQuestion == " "
    print "Are you there?\n"
    userResponse = gets.chomp.downcase
    if userResponse == 'y' || userResponse == 'yes' || userResponse == 'yeah'
      anim("Well then...\n")
      sleep 1
      magic_8_ball
    else userResponse == 'n' || userResponse =='no' || userResponse == 'nah'
      anim("Don't lie to me... Come on now...\n")
      sleep 1.5
      magic_8_ball
    end
  else
    animate_array
  end
end

magic_8_ball
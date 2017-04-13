puts "What is your Magic 8 Ball question?"
userQuestion = gets.chomp

class R_Array
  def self.newArray 
    ["As I see it, yes", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don’t count on it", "It is certain", "It is decidedly so", "Most likely", "My reply is no", "My sources say no", "Outlook good", "Outlook not so good", "Reply hazy, try again", "Signs point to yes", "Very doubtful", "Without a doubt", "Yes", "Yes, definitely", "You may rely on it."]
  end
end

class AnimArr
  def self.qAnimArr
    puts "What is your Magic 8 Ball question?"
    userResponse = gets.chomp
    STDOUT.puts anim("\rConsulting the heavens...")
    sleep 2
    print R_Array.newArray.sample
  end
end
class AnimArr2
  def self.qAnimArr2
    STDOUT.puts anim("\rConsulting the heavens...")
    sleep 2
    print R_Array.newArray.sample
  end
end

def anim(string)
  string.each_char do |n|
  print n
  charWait = rand(0.05..0.15)
  sleep(charWait)
  end
end

  if userQuestion == "" || userQuestion == " "
  	print "Are you there?\n"
  	userResponse = gets.chomp
  	if userResponse == 'y' || userResponse == 'yes' || userResponse == 'yeah'
  		anim("Well then...\n")
      sleep 1
      AnimArr.qAnimArr
  	else userResponse == 'n' || userResponse =='no' || userResponse == 'nah'
  		anim("Don't lie to me... Come on now...\n")
      sleep 1.5
      AnimArr.qAnimArr
  	end
  else
    AnimArr2.qAnimArr2
  end

#write an array that stores comments that can be called upon and printed to the terminal.

# puts "Give me a comment"
# comment = gets.chomp
# newComment = Array[]
# newComment << (comment)
# print newComment


module Mail

  def write(message)
   @message = message
  end

  def send
   puts "#{@time}: Sending a Postcard to #{@recipient}."
  end

end

class Postcard
  include Mail
  
  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
    @time = Time.now.strftime("%c")
  end

  def to_s
   puts "Postcard of #{@time}:"

   puts "Dear #{@recipient},"

   puts @message

   puts "Sincerely,"
   
   puts @sender

  end
end
 
card = Postcard.new("Me", "Friend")
card.write("Did you forget my birthsday?")
card.send
puts "-" * 60
sleep(2)
puts card

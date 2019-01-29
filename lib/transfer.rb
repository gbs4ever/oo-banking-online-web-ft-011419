class Transfer
  attr_accessor :balance , :status, :receiver, :sender
  
 def initialize(sender,receiver,amount)
   @amount= amount
   @sender =sender
  @receiver= receiver
  @status ="pending"

 end




  # your code here
end

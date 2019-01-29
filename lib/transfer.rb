class Transfer
  attr_accessor :amount , :status, :receiver, :sender
  
 def initialize(sender,receiver,amount)
   @sender =sender
   
    @amount= amount
  @receiver= receiver
  @status ="pending"

 end




  # your code here
end

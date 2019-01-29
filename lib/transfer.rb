class Transfer
  attr_accessor :balance , :status
  attr_reader :sender, :receiver
 def initialize(funds,sender,receiver)
   @funds = funds
   @sender =sender
  @receiver= receiver
 end




  # your code here
end

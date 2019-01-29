class Transfer
  attr_accessor :amount , :status, :receiver, :sender
attr_reader :amount
 def initialize(sender,receiver,amount)
   @sender =sender

    @amount= amount
  @receiver= receiver
  @status ="pending"

 end
  def valid?
    @sender.valid? &&   @receiver.valid? ? true : false
  end

def execute_transaction
  @receiver.deposit(@amount)
  @sender.deposit (-@amount)
  @status = "complete"
end

  # your code here
end

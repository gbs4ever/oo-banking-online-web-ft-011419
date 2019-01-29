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
  if self.valid? && @sender.balance >= @amount
    if @status   ==  "pending"
      @receiver.deposit(@amount)
      @sender.deposit (-@amount)
      @status = "complete"
    end
    else
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
  end
end

  # your code here
end

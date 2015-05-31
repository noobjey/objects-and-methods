class Candy
  attr_reader :type, :amount

  def initialize(type, amount = 100)
    @type = type
    @amount = amount
  end

  def sugar
    @amount
  end
end

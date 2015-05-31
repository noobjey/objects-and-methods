class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.length
  end

  def candies
    @candies
  end

  def << candy
    @candies << candy
  end

  def contains? type
    @candies.any? do |candy|
      candy.type == type
    end
  end

  def grab type
    grabbed_candy = @candies.select do |candy|
      candy.type == type
    end
    @candies.pop
    grabbed_candy.first
  end

  def take amount
    candies_taken = []
    (1..amount).map do
      candies_taken << @candies.pop
    end
    candies_taken
  end
end

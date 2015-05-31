class Bag
  @candies

  def initialize
    @candies= []
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

  def <<(value)
    @candies.push value
  end

  def contains?(type)
    @candies.any? do |candy|
      candy.type.eql? type
    end
  end
end

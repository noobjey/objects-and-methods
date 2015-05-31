class TrickOrTreater
  attr_reader :costume, :bag, :sugar_level

  def initialize costume
    @costume = costume
    @bag = Bag.new
    @sugar_level = 0
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    true unless @bag.empty?
  end

  def candy_count
    @bag.count
  end

  def eat
    candy_eaten = @bag.take 1
    @sugar_level += candy_eaten.first.sugar
  end

  def sugar_level
    @sugar_level
  end
end

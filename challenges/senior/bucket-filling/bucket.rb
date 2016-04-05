class Bucket
  def initialize
    @items = []
  end

  def total
    @items.reduce(0) { |sum, item| sum + item.size }
  end

  def <<(item)
    @items << item
  end
end

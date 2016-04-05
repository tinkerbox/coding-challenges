class Buckets
  attr_reader :buckets

  def initialize(collection, buckets = 2)
    @collection = collection
    @buckets = Array.new(buckets) { Bucket.new }
    split
  end

  private

  def split
    @collection.each do |item|
      @buckets.min { |x, y| x.total <=> y.total } << item
    end
  end
end

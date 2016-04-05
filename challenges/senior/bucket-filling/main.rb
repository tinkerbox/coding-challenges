sizes = [2, 4, 2, 2, 4, 2]
#=> [2, 4, 2, 2, 4, 2]

collection = sizes.map { |size| Item.new(size) }
#=> [#<Item:0x007fcdc301fe80 @size=2>, #<Item:0x007fcdc301fe58 @size=4>, #<Item:0x007fcdc301fe30 @size=2>, #<Item:0x007fcdc301fe08 @size=2>, #<Item:0x007fcdc301fde0 @size=4>, #<Item:0x007fcdc301fdb8 @size=2>]

Buckets.new(collection).buckets.map(&:total)
#=> [8, 8] (Works!)

Buckets.new(collection, 3).buckets.map(&:total)
#=> [6, 4, 6] (Works!)

Buckets.new(collection, 4).buckets.map(&:total)
#=> [6, 4, 4, 2] (Doesn't work! Should be [4, 4, 4, 4].)

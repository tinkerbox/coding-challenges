# Challenge: Bucket Filling

This challenge asks you to distribute a number of `Item`s into a number of `Bucket`s. The goal is for the items to be evenly distributed (based on their `size`) across the buckets afterwards.

The existing code takes a naïve approach, and takes the `Item`s from top to bottom, putting it in the `Bucket` that has the least content. This works for some scenarios, but not all. Consider the following:

```
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
```

In the last scenario, a substandard result is produced. Your task is to modify the code to produce balanced aggregates for this, and other cases. `Item`s should maintain their internal ordering after being placed in `Bucket`s as much as possible.

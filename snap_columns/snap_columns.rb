module SnapColumns
  class MaxSizeArray < Array
    def max_size
      self.map {|_| _.size}.max.to_i
    end
  end

  def self.get(words)
    words = words.sort
    rows = (words.size / 3.0).ceil

    column_0 = MaxSizeArray.new(words.shift(rows))

    split_index = (words.size / 2.0).ceil

    column_1 = MaxSizeArray.new(words.shift(split_index))
    column_2 = MaxSizeArray.new(words)

    [ column_0, column_1, column_2 ]
  end
end

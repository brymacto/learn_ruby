class Book

  def title=(str)
    arr = str.split(" ")
    arr2 = []
    # arr.each_with_index.map do |s, i|
    arr.each_with_index.map do |word, i|
      if (word == "a" || word == "an" || word == "and" || word == "in" || word == "of" || word == "the") && i != 0
        arr2 << word
      else
        arr2 << word.capitalize
      end
    end

    @title = arr2.join(" ")
  end

  def title
    @title
  end

end
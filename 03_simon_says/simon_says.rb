def echo(str)
  str
end

def shout(str)
  str.upcase
end

# def repeat(str)
#   "#{str} #{str}"
# end

  def repeat(string, num = 1)
    final_string = ""
    num.times do |x|
      final_string << "#{string}"
      final_string << " " if x < (num - 1)
    end
    final_string
    # your code here
  end

def start_of_word(string, num)
  string.slice(0, num)
end

def first_word(string)
  string.split(" ").first
end

def titleize(str)
  arr = str.split(" ")
  arr2 = []
  arr.each_with_index.map do |s, i|
    s.downcase!
    if s != "or" && s != "and" && s != "the" && s != "over"
     arr2 << s.capitalize
    else
      if i == 0
        s.capitalize!
      end
      arr2 << s
    end
  end
  arr2.join(" ")
end
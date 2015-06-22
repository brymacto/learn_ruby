def reverser
  arr = yield.split(" ")
  arr.map! do |word|
    word.reverse!
  end
  arr.join(" ")
end

def adder(var = 1)
  yield + var
end

def repeater(var = 1)
  var.times do
    yield
  end
end
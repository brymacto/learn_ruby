def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(arr)
  arr.inject(0) do |result, element|
    result += element
  end

end
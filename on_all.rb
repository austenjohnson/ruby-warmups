arr = [nil, 'hi', 1, 8, nil, 'you', 'then', 53, nil]

def on_all array
  p array
  p array.push('words')
  p array.reverse!
  p array.shuffle
  p array.join(", ")
end

puts on_all(arr)
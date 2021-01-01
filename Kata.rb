class Kata
  # Given a word, return middle char
  # if word length is even return middle 2 chars

  def get_middle(s)
    if s.length.even?
      s[(s.length / 2) - 1] + s[(s.length / 2)]
    else
      s[(s.length / 2)]
    end
  end

  # codewars top solutionnnn

  def get_middle_top(s)
    # woauw subusutringuu
    s[(s.size-1)/2..s.size/2]
  end
end

kata = Kata.new

puts kata.get_middle("test")
puts kata.get_middle("testing")
puts kata.get_middle("middle")
puts kata.get_middle("A")
puts kata.get_middle("of")

puts kata.get_middle_top("test")
puts kata.get_middle_top("testing")
puts kata.get_middle_top("middle")
puts kata.get_middle_top("A")
puts kata.get_middle_top("of")

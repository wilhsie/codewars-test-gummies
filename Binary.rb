class Binary
  def add_binary(a,b)
    r = a + b
    r.to_s(2)
  end

  # top rated solution on codewars
  #
  def add_binary_top(a,b)
    (a+b).to_s(2)
  end

  def test_add_binary
    puts add_binary(1,1)
    puts add_binary(0, 1)
    puts add_binary(1, 0)
    puts add_binary(2, 2)
    puts add_binary(51, 12)
  end

  def test_add_binary_top
    puts add_binary_top(1,1)
    puts add_binary_top(0, 1)
    puts add_binary_top(1, 0)
    puts add_binary_top(2, 2)
    puts add_binary_top(51, 12)
  end
end

b = Binary.new
b.test_add_binary
b.test_add_binary_top



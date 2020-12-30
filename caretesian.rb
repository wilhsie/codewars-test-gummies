def is_valid_walk(walk)
  max_time = 10
  hori = 0
  vert = 0

  walk.each do |dir|
    if (dir == 'n')
      vert += 1
    elsif (dir == 's')
      vert -= 1
    elsif(dir == 'w')
      hori += 1
    elsif(dir == 'e')
      hori -= 1
    else
      return false
    end
    max_time = max_time - 1
  end

  if (max_time == 0 and hori == 0 and vert ==0)
    return true
  else
    return false
  end
end

def is_valid_walk_elegant(walk)
  walk.count('w') == walk.count('e') and walk.count('n') == walk.count('s') and walk.count == 10
end

puts is_valid_walk(['a', 'b', 'c'])
puts is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])
puts is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e'])

puts is_valid_walk_elegant(['a', 'b', 'c'])
puts is_valid_walk_elegant(['n','s','n','s','n','s','n','s','n','s'])
puts is_valid_walk_elegant(['w','e','w','e','w','e','w','e','w','e','w','e'])

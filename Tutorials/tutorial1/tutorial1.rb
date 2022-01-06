for row in 1..8
  for col in 1..8
    if (col + row).even?
      print "1 "
    else
      print "0 "
    end
  end

  puts
end

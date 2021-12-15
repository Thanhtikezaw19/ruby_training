for row in 1..8 do 
  for col in 1..8 do 
    if (col + row).even?
      print "1 "
      else 
        print "0 "
    end
  end
  puts
end  


height = 5
width = height * 2 - 1

# calculate top
for i in 0..height

  for j in 0..width + 1

    if j >= height - i && j <= height + i
      print "*"
    else
      print " "
    end

  end

  puts
  
end

# calculate buttom
for i in (height - 1).downto(0)

  for j in (width + 1).downto(0)

    if j >= height - i && j<= height + i
      print "*"
    else
      print " "
    end

  end

  puts

end
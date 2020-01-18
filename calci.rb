loop do
 puts"enter your choice"
 puts"1-add"+"2-sub"+"3-mul"+"4-div"
 a=gets.chomp.to_i
 puts"enter the two numbers"
 b=gets.chomp.to_i
 c=gets.chomp.to_i
 puts"result:"
 if a==1
   puts c+b
 elsif a==2
   puts b-c
 elsif a==3
   puts b*c
 else a==4
   puts b/c
 end
 puts"enter 0 if you want to discontinue"
 c=gets.chomp.to_i
 if c==0
  break
 end
end 
 

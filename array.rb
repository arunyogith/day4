 a=Array.new
 loop do
 puts"\n1-add value","2-max","3-min","4-sum","5-avg","6-search","7-display","8-delete index","9-delete value","10-exit"," enter your choice"
 n=gets.chomp.to_i
 case n
  when 1 
         puts"enter value to be added::"
         m=gets.chomp.to_i
	 a.push(m)
	 puts" value added successfully!!"
  when 2 
	 max=a.max
	 puts "largest::#{max}"
  when 3 
	 min=a.min
         puts "smallest::#{min}"
  when 4
	 sum=a.sum
	 puts "sum::#{sum}" 
  when 5
	 avg=a.sum/a.length
	 puts "average::#{avg}"
  when 6
	 puts "enter element to be searched"
	 n=gets.chomp.to_i
	 t=a.include?(n)
	 if t
	  puts"present"
 	 else 
	  puts"absent"
	 end
  when 7
	 puts a
  when 8
	 puts "enter element index to be deleted"
	 n=gets.chomp.to_i
	 a.delete_at(n)
  when 9
	 puts "enter element to be deleted"
	 n=gets.chomp.to_i
	 a.delete(n)
  end
  if n==10
   break
  end
end

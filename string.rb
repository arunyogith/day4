a=Array.new
loop do 
 puts "\n1-add mail","2-display all","3-display only edu email ids","4-search","5-delete mail id by value","6-display unique domains of all mail ids","7-count mail ids in each domain","8-exit","enter your choice"
 n=gets.chomp.to_i
 case n
  when 1
	 n=gets
	 a.push(n)
	 puts "succesfully created a mail id"
  when 2
	 puts a
  when 3
	 edu=a.select{|item| item.include?(".edu")}
	 puts edu
  when 4
	 puts "enter the mail id to be searched"
	 s=gets
	 if a.include?(s)
	  puts "present"
	 else
	  puts "absent"
	 end
  when 5
	 puts "enter the mail id to be deleted"
	 s=gets
	 if a.include?(s)
	  a.delete(s)
	  puts "deleted"
	 else
	  puts "mail id not found"
	 end
  when 6,7
	  t=Array.new
	  for i in 0 ..a.length() do
	   c=(a[i].index('@')).to_i  
	   t.push(a[i][c,a[i].length()-1])
	  end
	  t.uniq
	  puts t
   	  if n==7
	   count=0
	   for i in 0 ..t.length()-1 do
	    for j in 0 ..a.length()-1 do
	     q=(a[j].index('@')).to_i
	     if t.include?(a[i][q,a[i].length()-1])
	      count=count+1
	     puts t[j]+"::"+count
	     end
	    end
	   count=0
	   end
	  end
  end  
 if n==8
  break
 end
end


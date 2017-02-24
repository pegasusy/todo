puts 'hello'
string_array = ["aa","bb","cc"]
puts string_array[1]

two_d_array = [0,1,2,3],[4,5,6,7],[8,9,10,11]
print two_d_array[1][3]

two_d_array.each {|x| puts "#{x}"}

friends =  ["Jake", "Ken", "Nelson"]

family = { "Homer"=>"dad", "Marge"=> "mon", "Lisa"=>"sister"}
friends.each{|item| puts "#{item}"}
family.each {|key,value| puts"#{key}:#{value}"}

 family.each do
   |a,b| puts"#{a}:#{b}"
 end

str = "symbol"
symbol = :symbol
p str == symbol
p str == symbol.to_s
p str.to_sym == symbol

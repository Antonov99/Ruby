backet = {}
result = 0

puts "Введите стоп, чтобы закончить"
loop do
  puts "Введите название"
  name = gets.chomp
  break if name == "стоп"
  puts "Введите цену"
  price = gets.chomp.to_f
  puts "Введите количество"
  count = gets.chomp.to_f
  backet[name] = {price => count}
end

backet.each do |name, price|
  puts "Стоимость #{name} - #{price.keys.first * price.values.first}"
  result += price.keys.first * price.values.first
end

puts "Итоговая сумма: #{result}"

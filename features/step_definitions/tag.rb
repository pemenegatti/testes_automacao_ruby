Quando("eu divido dois numeros {int} \/ {int}.") do |valor1, valor2|
  @divisão = valor1 / valor2
  puts @divisão
end
  
Então("o resultado da divisão.") do
  expect(@divisão).to eq 5
  puts @divisão
end
  
Quando("eu multiplico dois numeros {int} * {int}.") do |valor3, valor4|
  @multiplcacao = valor3 * valor4
  puts @multiplcacao
end
  
Então("o resultado da multiplicação.") do
  expect(@multiplcacao).to eq 20
  puts @multiplcacao
end
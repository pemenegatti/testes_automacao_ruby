Quando("eu multiplico minhas {int} pelo {int}.") do |laranja, valor|
  @multiplcacao = laranja * valor
end
  
Então("eu vejo qual o {int} da multiplcação.") do |resultado|
  expect(@multiplcacao).to eq resultado
end
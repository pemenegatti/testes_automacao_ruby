Dado("que eu tenho umas laranjas.") do |table|
  puts @laranjas = table.rows_hash['laranjas'].to_i  
end
  
Quando("eu corto {int} laranjas.") do |valor1|
  @cortar = valor1
  @total = @laranjas - @cortar
end
  
Então("eu verifico quantas laranjas sobraram inteiras.") do
  expect(@total).to eq 8
end
  
Dado("que tenho umas laranjas.") do |table|
  table.hashes.each do |valor2|
    @laranjas = valor2['laranjas'].to_i
  end  
end
  
Quando("eu chupo {int} laranjas.") do |valor3|
  @chupei = valor3
  @resultado = @laranjas - @chupei
end
  
Então("eu verifico quantas laranjas sobraram.") do
  expect(@resultado).to eq 8
end
Dado("que estou na tela de dragdrop") do
  visit '/'
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Iterações').click
  find('a[href="/iteracoes/draganddrop"]').click
end
  
Quando("movo o dragdrop") do
  @primeiro_elemento = find('#winston')
  @segundo_elemento = find('#dropzone')
  @primeiro_elemento.drag_to(@segundo_elemento)
  sleep(5)
end
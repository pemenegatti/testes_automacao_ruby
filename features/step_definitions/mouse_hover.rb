Quando("seleciono o mouse hover.") do
  visit '/'
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Iterações').click
  find('a[href="/iteracoes/mousehover"]').click
  find('.activator').hover.click
  sleep(3)
end
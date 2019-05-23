Quando("clico no botão.") do
  visit '/'
  #click_on('Começar Automação Web')
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Busca de elementos').click
  find('a[href="/buscaelementos/botoes"]').click
  find('#teste').click
  sleep(2)
end
  
Então("verifico se o texto apareceu na tela com sucesso.") do
  #@texto = find('#div1')
  #expect(@texto.text).to eq 'Você Clicou no Botão!'
  page.assert_text(text, 'Você Clicou no Botão!')
  page.has_text?('Você Clicou no Botão!')
  have_text('Você Clicou no Botão!')
  find('#teste').click
  assert_no_text(text, 'Você Clicou no Botão!')
  has_no_text?('Você Clicou no Botão!')
  sleep(2)
end
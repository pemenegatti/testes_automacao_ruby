Quando("realizo acoes com o teclado") do
  visit '/'
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Formulário').click
  find('a[href="/users/new"]').click
  find('#user_name').send_keys(:page_down)
  find('input[value="Criar"]').send_keys(:enter)
  sleep(4)
end
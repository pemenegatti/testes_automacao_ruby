Quando("eu cadastro o usuário.") do
  visit '/'
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Formulário').click
  find('a[href="/users/new"]').click
  fill_in(id: 'user_name', with: 'Pedro')
  find('#user_lastname').set('Menegatti')
  find('#user_email').send_keys('pedrofcmenegatti@gmail.com')
  find('input[value="Criar"]').click  
end
  
Então("verifico se o usuário foi cadastrado.") do
  texto = find('#notice')
  expect(texto.text).to eq 'Usuário Criado com sucesso'  
end
  
Quando("edito um cadastrado.") do
  sleep(5)
  find('.btn.waves-light.blue').click
  fill_in(id: 'user_name', with: 'Flavia')
  find('#user_lastname').set('Ribeiro')
  find('input[value="Criar"]').click  
end
  
Então("verifico se o usuário foi editado.") do
  texto = find('#notice')
  expect(texto.text).to eq 'Seu Usuário foi Atualizado!'
  sleep(5)
end
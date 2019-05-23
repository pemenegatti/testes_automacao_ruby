Quando("eu faco um cadastro.") do
  visit '/'
  click_on('Começar Automação Web')
  find('a[class="collapsible-header "]').click
  find('a[href="/users/new"]').click
  fill_in(id: 'user_name', with: 'Pedro')
  find('#user_lastname').set('Menegatti')
  find('#user_email').send_keys('pedrofcmenegatti@gmail.com')
  fill_in(id: 'user_address', with: 'Av. washington Luiz')
  find('#user_university').set('UNINOVE')
  find('#user_profile').send_keys('QA')
  fill_in(id: 'user_gender', with: 'Masculino')
  find('#user_age').set('25')
  find('input[value="Criar"]').click
  #click_on('Criar')
  sleep(5)
end
  
Entao("verifico se fui cadastrado.") do
  texto = find('#notice')
  expect(texto.text).to eq 'Usuário Criado com sucesso'
end
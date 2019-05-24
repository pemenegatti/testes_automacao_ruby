Quando("entro no iframe e preencho os campos") do
  visit '/'
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Mudança de foco').click
  find('a[href="/mudancadefoco/iframe"]').click
  #mudando o foco para o iframe
  within_frame('id_do_iframe')do
   #iremos fazer as ações dentro do iframa
   fill_in(id: 'first_name', with: 'Pedro')
   fill_in(id: 'last_name', with: 'Menegatti')
  end
end
  
Quando("entro no modal e verifico o texto") do
  visit '/'
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Mudança de foco').click
  find('a[href="/mudancadefoco/modal"]').click
  find('a[href="#modal1"]').click
  within('#modal1')do
  texto = find('h4')
  expect(texto.text).to eq 'Modal Teste'
 end
 sleep(4)
end
  
Quando("fecho o modal") do
  find('.modal-close').click
  sleep(2)
end
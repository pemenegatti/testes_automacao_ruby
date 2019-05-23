Quando("eu marco um checkbox e um radiobox.") do
  visit '/'    
  click_on('Começar Automação Web')
  find('a', text: 'Busca de elementos').click
  find('a[href="/buscaelementos/radioecheckbox"]').click
  find('label[for="white"]').click
  check('purple', allow_label_click: true)
  sleep(2)
  uncheck('purple', allow_label_click: true)
  sleep(3)
  choose('red', allow_label_click: true)
  sleep(3)
end
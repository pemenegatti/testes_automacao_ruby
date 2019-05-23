Quando("interajo com dorpdown e select.") do
  visit '/'
  click_on('Começar Automação Web')
  find('a', text: 'Busca de elementos').click
  find('a[href="/buscaelementos/dropdowneselect"]').click
  find('.btn.dropdown-button').click
  find('#dropdown3').click
  select 'Chrome', from:'dropdown'
  sleep(2)
  find('option[value="2"]').select_option
  sleep(3)
end
  
Quando("Preencho o autocomplete.") do
  visit '/'
  click_on('Começar Automação Web')
  find('a', text: 'Widgets').click
  find('a[href="/widgets/autocomplete"]').click
  find('#autocomplete-input').set 'São P'
  find('ul', text: 'São Paulo').click
  sleep(3)
end
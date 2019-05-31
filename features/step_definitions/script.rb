Quando("eu uso um script") do
  visit '/'
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Outros').click
  find('a[href="/outros/scroll"]').click
  page.execute_script("window.scrollBy(0,1500)")
  @result = page.evaluate_script('4 + 4');
  puts @result
  sleep(5)
end
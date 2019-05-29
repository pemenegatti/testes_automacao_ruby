Quando("eu faco um upload de arquivo") do
  visit '/'
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Outros').click
  find('a[href="/outros/uploaddearquivos"]').click
  #attach_file('upload', 'C:/Users/219260/Source/cucumber/tests/features/vegeta.jpg', make_visible: true)
  #C:\Users\219260\Source\cucumber\tests\features\vegeta.jpg
  @foto = File.join(Dir.pwd, 'features/vegeta.jpg')
  attach_file('upload', @foto, make_visible: true)
  sleep(5)
end
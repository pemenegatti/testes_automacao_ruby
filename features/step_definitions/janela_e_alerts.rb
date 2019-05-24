Quando("eu entro na janela e verifico a mensagem") do
  visit '/'
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Mudança de foco').click
  find('a[href="/mudancadefoco/janela"]').click
  #janela recebe uma janela que foi aberta pelo link
  janela =  window_opened_by do
    click_link 'Clique aqui'
  end

  #muda de foco para a janela
  within_window janela do
    expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
    sleep(3)
    janela.close
    sleep(3)
  end

  #segunda opcao
  click_link 'Clique aqui'
  #mudamos para ultima aba
  switch_to_window windows.last
  expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
  @mensagem = find('.red-text.text-darken-1.center')
  expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
  sleep(3)
  windows.last.close
  sleep(3)
end
  
Quando("eu entro no alert e faco a acao") do
  visit '/'
  find('a[href="/treinamento/home"]').click
  find("a", text: 'Mudança de foco').click
  find('a[href="/mudancadefoco/alert"]').click
  find('button[onclick="jsAlert()"]').click
  sleep(2)
  page.accept_alert
  sleep(2)
  find('button[onclick="jsConfirm()"]').click
  sleep(2)
  page.dismiss_confirm
  sleep(2)
  find('button[onclick="jsPrompt()"]').click
  sleep(2)
  page.accept_prompt(with: 'Pedro Menegatti')
  sleep(2)
  find('button[onclick="jsPrompt()"]').click
  sleep(2)
  page.dismiss_prompt
  sleep(2)
end
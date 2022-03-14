#teste1
Dado("que acesso a página de cadastro") do
  visit "http://parodify.herokuapp.com"
  click_on "EXPERIMENTE AGORA"
end

Quando("submete o meu cadastro com:") do |table|
  user = table.rows_hash

  delorean user[:email]

  find("#user_email").set user[:email]
  find("#user_password").set user[:senha]
  find("#user_password_confirmation").set user[:senha_confirma]

  click_on "Cadastrar"
end

Então("devo ser redirecionado para a área logada.") do
  expect(page).to have_css ".dashboard"
end

#Uma linha ele automatizou tudo
Então("devo ver a mensagem: {string}") do |expect_message|
  alert = find(".message p")
  expect(alert.text).to eql expect_message
end

Quando("acesso a página de cadastro") do
  steps %(
    Dado que acesso a página de cadastro
  )
end

Então("deve exibir o seguinte css {string}") do |expect_css|
  expect(page).to have_css expect_css
end

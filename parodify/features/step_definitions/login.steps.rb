Dado("que acesso a página login") do
  visit "http://parodify.herokuapp.com"
  click_on "Login"
end

Quando("submeto minhas credenciais com: {string} e {string}") do |email, password|
  find("#user_email").set email
  find("#user_password").set password
  click_on "Log in"
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard"
end

Então("devo ver a mensagem de erro: {string}") do |expect_message|
  message = find(".message .message-body")
  expect(message.text).to eql expect_message
end

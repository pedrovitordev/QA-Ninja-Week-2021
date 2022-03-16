Dado("que acesso a página login") do
  goto_login
end

Quando("submeto minhas credenciais com: {string} e {string}") do |email, password|
  login_with(email, password)
end

Então("devo ser redirecionado para a área logada") do
  expect(page).to have_css ".dashboard"
end

Então("devo ver a mensagem de erro: {string}") do |expect_message|
  message = find(".message .message-body")
  expect(message.text).to eql expect_message
end

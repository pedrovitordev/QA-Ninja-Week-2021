Dado('que acesso a página de cadastro') do                                    
    visit "http://parodify.herokuapp.com/users/sign_up"
end                                                                           
                                                                                
Quando('submete o meu cadastro com:') do |table| 
    user = table.rows_hash

    delorean user[:email]

    find("#user_email").set user[:email]
    find("#user_password").set user[:senha]
    find("#user_password_confirmation").set user[:senha_confirma]

    click_on "Cadastrar"  
end                                                                           
                                                                                   
Então('devo ser redirecionado para a área logada.') do                        
    expect(page).to have_css ".dashboard" 
end                                               

Quando('submeto meu cadastro sem o email.') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então('devo ver Oops ! Informe seu Email.') do
    pending # Write code here that turns the phrase above into concrete actions
end

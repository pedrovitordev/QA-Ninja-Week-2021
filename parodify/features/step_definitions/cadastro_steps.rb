
#teste1
Dado('que acesso a página de cadastro') do                                    
    visit "http://parodify.herokuapp.com"
    click_on "EXPERIMENTE AGORA"
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

#teste2 (reaproveita o Dado)
Quando('submeto meu cadastro sem o email') do

    find("#user_password").set "pwd123"
    find("#user_password_confirmation").set "pwd123"

    click_on "Cadastrar" 
end
  
    Então('devo ver Oops ! Informe seu Email') do
    alert = find(".message p")
    expect(alert.text).to eql 'Oops! Informe seu email.'
end

#teste3 (reaproveita o Dado)
Quando('submeto meu cadastro sem a senha') do
    find("#user_email").set 'GabrielaAmaDurama@gmail.com'                               
  
    click_on "Cadastrar"   
end                                                                          
                                                                               
  Então('devo ver Oops ! Informe sua senha') do                                
    alert = find(".message p")
    expect(alert.text).to eql 'Oops! Informe sua senha.'
end                                                                          

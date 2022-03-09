Dado('que acesso a página de cadastro') do                                    
    visit "http://parodify.herokuapp.com/users/sign_up"
end                                                                           
                                                                                
Quando('submete o meu cadastro com:') do |table|                              
    user = table.rows_hash
    find("#user_email").set user[:email]
    find("#user_password").set user[:senha]
    find("#user_password_confirmation").set user[:senha_confirma]

    click_on "Cadastrar"  
end                                                                           
                                                                                   
Então('devo ser redirecionado para a área logada.') do                        
    expect(page).to have_css ".dashboard" 
end                                                                           
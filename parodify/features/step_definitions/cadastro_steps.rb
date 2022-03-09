Dado('que acesso a página de cadastro') do                                    
    visit "http://parodify.herokuapp.com/users/sign_up"
    sleep 5 # temporário
end                                                                           
                                                                                
Quando('submete o meu cadastro com:') do |table|                              
    # table is a Cucumber::MultilineArgument::DataTable                         
    pending # Write code here that turns the phrase above into concrete actions 
end                                                                           
                                                                                
Então('devo ser redirecionado para a área logada.') do                        
    pending # Write code here that turns the phrase above into concrete actions 
end                                                                           
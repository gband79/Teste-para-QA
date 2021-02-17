Dado("que acesso a sessão de login") do
    @act.click_on(".navbar-right .fa-sign-in")
end

E("inicio um novo registro") do
    @act.use_xpath("//*[contains(text(), 'Register')]")
end

Quando("efetivar o registro") do
    @act.input_value("#username", "teste1")
    @act.input_value("#password", "123teste")
    @act.input_value("#password_again", "123teste")
    @act.input_fake("#email", "email")
    click_button "Register"
           
end

Então("exibir a mensagem de alerta {string}") do |msg|
    alert_msg = find(".alert-danger").text
    expect(alert_msg).to eq(msg)
    
end
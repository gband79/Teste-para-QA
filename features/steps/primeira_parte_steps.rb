Dado("que navego para a página de busca do banco de questões") do
    check_banner = find("#banner")
    expect(check_banner.visible?).to be true

    check_navbar = find(".navbar-right")
    expect(check_navbar.visible?).to be true

end

E("digito {string} no campo de busca") do |query|
    @act.click_on(".col-lg-8 .btn-primary .fa-bars")
    @act.input_value("#query", query)
end

Quando("clico no botão de buscar") do
    @act.click_on(".btn-default .fa-search")
end

Então("visualizo uma mensagem de erro com o texto {string}") do |error_msg|
    msg = find(:xpath, "//*[contains(text(),'No questions found.')]")
    expect(msg.text).to eql error_msg
    sleep 5
end
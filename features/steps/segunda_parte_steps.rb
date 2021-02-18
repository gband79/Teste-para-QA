E("pesquisar por categoria") do
    @act.click_on("#type")
    @act.use_xpath("//*[@id='type']/option[@value='Category']")
    
end


E("exibir o controle de paginação") do
    ctrl_pg = find(".pagination")
    expect(ctrl_pg.visible?).to be true
    if(ctrl_pg.visible? == true)
        log("Controle de paginação está presente.")
        else
            log("Controle de paginação ausente.")
        
    end
    
end    

Então("deve retornar a listagem com 25 itens") do
    expect(page).to have_selector('tbody > tr', count: 25)
end
Before do
    @act = Browse.new
      
    log("\nExecutando o cenário...")

    page.windows[0].maximize
    visit "https://opentdb.com/"
end
  
After do |scenario|
      
    temp_shot = page.save_screenshot("logs/#{scenario.__id__}.png") 
    
    Allure.add_attachment(
      name: "screenshot",
      type: Allure::ContentType::PNG,
      source: File.open(temp_shot)
    )
    
    log("\nTeste finalizado!")
end
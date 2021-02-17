class Browse
    include Capybara::DSL    

    def click_on(link)
        find("#{link}").click        
    end

    def use_xpath(xpath)
        find(:xpath, "#{xpath}").click
    end
       
    def input_value(element, value)
        find("#{element}").send_keys("#{value}")
    end

    def input_fake(element, fake)
        if(fake == "user")
            fakeName = Faker::Internet.user_name
            puts("O fake name foi: '#{fakeName}'")
            find("#{element}").send_keys(fakeName)
        
        elsif(fake == "email")
            fakeEmail = Faker::Internet.email
            puts("O fake e-mail foi: '#{fakeEmail}'")
            find("#{element}").send_keys(fakeEmail)
            
         
            
        end
    end

   
end
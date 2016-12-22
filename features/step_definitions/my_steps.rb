Given(/^voy a la pantalla$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |titulo|
   last_response.body.should =~ /#{titulo}/m
end

When(/^ingreso Letra "(.*?)", (\d+)$/) do |letra, numero|
    fill_in("letra", :with => letra)
    fill_in("numero", :with => numero)	
    click_button("Disparo")
end







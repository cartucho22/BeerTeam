Given(/^voy a la pantalla$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |titulo|
   last_response.body.should =~ /#{titulo}/m
end

#When(/^ingreso Letra A$/) do |field, value|
#  fill_in(field, :with => "letra","A")	
#  click_button("Play")
#end

When(/^ingreso Letra "(.*?)"$/) do |letra|
   fill_in("letra", :with => letra)	
   click_button("Play")
end





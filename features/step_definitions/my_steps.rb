Given(/^voy a la pantalla$/) do
	visit '/'
end

Then(/^debo ver "(.*?)"$/) do |titulo|
   last_response.body.should =~ /#{titulo}/m
end


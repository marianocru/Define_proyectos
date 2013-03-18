Given /^Voy a la pagina de alta proyecto$/ do
  visit new_proyecto_path
end

Given /Ingreso in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When /^Presiono "([^"]*)"$/ do |arg1|
  click_button 'Create'
end

Then /^Espero ver la pagina de datos del proyecto$/ do
  page.should have_content('Proyecto was successfully created')
end

Then /^Espero ver un proyecto con "(.*)"$/ do |arg1|
  page.should have_content("Mi proyecto")
end


Given /^Voy a la pagina de mostrar proyecto$/ do
  visit proyecto_path
end

Then /^Espero ver en titulo "(.*)"$/ do |arg1|
  page.should have_content("Mi Proyecto")
end

Then /^Espero ver el  proyecto con titulo "([^"]*)"$/ do |arg1|
  pending
end
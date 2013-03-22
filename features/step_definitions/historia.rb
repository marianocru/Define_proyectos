Given /^Voy a la pagina de alta historia$/ do
  visit new_historia_path
end

Given /Ingreso in "([^"]*)" with "([^"]*)"$/ do |campo, valor|
  fill_in(campo, :with => valor)
end

When /^Presiono "(.*)"$/ do |boton|
  click_button boton
end

Then /^Espero ver la pagina de datos de la historia del proyecto$/ do
  page.should have_content('La nueva historia ha sido registrada.')
end

Then /^Espero ver una historia con "(.*)"$/ do |arg1|
  page.should have_content(arg1)
end


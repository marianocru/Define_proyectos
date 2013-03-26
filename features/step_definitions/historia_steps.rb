Given /^Voy a la pagina de alta$/ do
  visit new_historia_path
end

Then /^mensaje de registro ok en pagina$/ do
  page.should have_content('La nueva historia ha sido registrada.')
end

Given /^las siguientes historias:$/ do |tabla|
  Historia.create!(tabla.hashes)
end

And /^Estoy en pagina de listado$/  do
     visit historias_path
end

Then /^mensaje de actualizacion de registro ok en pagina$/ do
  page.should have_content('La nueva historia ha sido actualizada.')
end

When /^Espero que se complete la respuesta del ajax$/ do
  page.find('div#div_listado_historias').should have_content('table')
end


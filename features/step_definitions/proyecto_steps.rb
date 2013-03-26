Given /^Voy a la pagina de alta proyecto$/ do
  visit new_proyecto_path
end

Then /^Espero ver la pagina de datos del proyecto$/ do
  page.should have_content('El nuevo proyecto ha sido registrado.')
end


Given /^Voy a la pagina de mostrar datos del proyecto llamado "(.*)"$/ do |arg1|
  @proyectos = Proyecto.find_by_titulo(arg1)
  @proyecto = @proyectos[0]
  visit "proyectos/#{@proyecto.id}"
end

#### 2do escenario

Given /^los siguientes proyectos:$/ do |tabla|
  Proyecto.create!(tabla.hashes)
end

Given /^Estoy en la pagina del listado de proyectos$/  do
     visit proyectos_path
end


When /^Espero que se complete la respuesta del ajax$/ do
  page.find('div#div_listado_proyectos').should have_content('table')
end


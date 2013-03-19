Given /^Voy a la pagina de alta proyecto$/ do
  visit new_proyecto_path
end

Given /Ingreso in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When /^Presiono "(.*)"$/ do |arg1|
  click_button arg1
end

Then /^Espero ver la pagina de datos del proyecto$/ do
  page.should have_content('El nuevo proyecto ha sido registrado.')
end

Then /^Espero ver un proyecto con "(.*)"$/ do |arg1|
  page.should have_content(arg1)
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

And /^Presiono "(.*?)" del (\d+)do proyecto$/ do |arg1, arg2|
  within all('table tr')[arg2.to_i] do
    click_link arg1
  end
end


Then /^Espero ver en la pagina "(.*)"$/ do |arg1|
  page.should have_content(arg1)
end

Then /^Espero ver el mensaje de "(.*)"$/ do |arg1|
  page.should have_content arg1
end

#### 3er escenario
Then /^Espero que la tabla quede como la siguiente:$/ do |tabla_esperada|
  rows = find("table").all('tr')
  table = rows.map { |r| r.all('th,td').map { |c| c.text.strip } }
  tabla_esperada.diff!(table)
end

Given /^voy a la pagina de buscar proyectos$/ do
  visit consultar_proyecto_path
end
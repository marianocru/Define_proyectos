
Given /Ingreso in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When /^Presiono "(.*)"$/ do |arg1|
  click_button arg1
end

Then /^Espero ver "(.*)"$/ do |arg1|
  page.should have_content(arg1)
end


And /^Presiono "(.*?)" del (\d+)do$/ do |arg1, arg2|
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

Then /^Espero que la tabla quede como la siguiente:$/ do |tabla_esperada|
  rows = find("table").all('tr')
  table = rows.map { |r| r.all('th,td').map { |c| c.text.strip } }
  tabla_esperada.diff!(table)
end

Given /^voy a la pagina de "(.*)" de "(.*)"$/ do |accion, controlador|
  visit "/#{controlador}/#{accion}"
end

Then /^Espero que la tabla ajax quede como la siguiente:$/ do |tabla_esperada|
  rows = find("table").all('tr')
  table = rows.map { |r| r.all('th,td').map { |c| c.text.strip } }
  tabla_esperada.diff!(table)
end
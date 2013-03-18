Given /^the following meta:$/ do |meta|
  Meta.create!(meta.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) meta$/ do |pos|
  visit meta_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following meta:$/ do |expected_meta_table|
  expected_meta_table.diff!(tableish('table tr', 'td,th'))
end

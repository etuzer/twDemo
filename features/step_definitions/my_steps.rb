Given(/^i go to google$/) do
  visit "http://www.google.com"
  sleep 1
end

When(/^i search for fenerbahçe$/) do
  find("#lst-ib").set "fenerbahçe"
  find("button.lsb").click
  sleep 2
end

Then(/^i see fenerbahçe in the result$/) do
  find("#uid_0").should have_content('Fenerbahçe')
  find("#uid_0").should have_content('Trabzonspor')
  find("#uid_0").should have_content('2 - 0')
end

Given(/^i go to "([^"]*)"$/) do |website|
  visit website
end

When(/^i search for "([^"]*)"$/) do |content|
  find("#lst-ib").set content
  find("button.lsb").click
  sleep 2

end

Then(/^i see "([^"]*)" in the result$/) do |content|

  case content
    when 'nil'
      page.should have_css('#lu_map')
    else
      find('#uid_0').should have_content(content)
  end
  sleep 2
end
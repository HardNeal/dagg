When(/^нажмет на кнопку Hello, admin@m.r далее нажмет на Admin Panel$/) do
 click_link 'Привет, admin@m.r'
  click_link 'Админ Панель' 
end

When(/^перейдет на страницу с админкой$/) do
  page.has_content?("Comments")
end

When(/^Перейти на страницу с юзерами$/) do
  click_link 'Users'
end

When(/^я перешел на страницу с юзерами$/) do
  page.has_content?("New User")
end

When(/^попробовать удалить самого себя$/) do
  within('#user_1') do
   click_link 'Удалить'
   page.driver.browser.switch_to.alert.accept
  end
end

Если(/^перекинуло на страницу с ошибкой закончить сценарий$/) do
  page.has_content?("Вы не можете удалить самого себя")
end

Допустим(/^авторизован пользователь с данными email "([^"]*)" и password "([^"]*)"$/) do |email, password|
  visit('/users/sign_in')
  within("#form-sign") do
   fill_in("user[email]", with: email)
   fill_in("user[password]", with: password)
    click_button 'Войти'
  end
end

When(/^перейдет на главную страницу$/) do
 page.has_content?('Привет, admin@m.r')
end

When(/^нажать на кнопку Hello, admin@m\.r далее нажать на Edit Profile$/) do
  click_link 'Привет, admin@m.r'
   click_link 'Редактирование'
end

When(/^перешел на страницу с редактированием$/) do
  page.has_content?("Редактирование")
end

When(/^обновить поля с данными phone_number "([^"]*)" и email "([^"]*)" и password "([^"]*)"$/) do |phone_number, email, password|
  within(".login-wrap") do
   fill_in("user[phone_number]", with: phone_number)
   fill_in("user[email]", with: email)
   fill_in("user[current_password]", with: password)
    click_button 'Обновить'
  end
end

When(/^данные обновились перейти на главную страницу$/) do
  page.has_content?("TRACK-CAR")
end

#language: ru

Функционал: Вход на сайт как пользователь
		Я хочу авторизоваться на сайт как пользователь
		Я хочу иметь возможность переходить по разделам
		Я хочу иметь возможность редактировать свой


Сценарий: Проверка авторизации
        Допустим авторизован пользователь с данными email "admin@m.r" и password "123456"
        Если перейдет на главную страницу 
        То нажать на кнопку Hello, admin@m.r далее нажать на Edit Profile
        Если перешел на страницу с редактированием
        То обновить поля с данными phone_number "0777777777" и email "admin@m.r" и password "123456"
        Если данные обновились перейти на главную страницу
free = room{
	nam = 'Где-то',
	dsc = [[Фух! Успела. И где я теперь? А сколько времени прошло?^
	 Я посмотрела на телефон.^
	 Неделя!? Ладно... Думаю, осталось ещё немного… Научиться делать более красивые переходы и вставлять картинки.^
	 Я оглянулась. Вокруг всё такое нейтральное, нет ничего. Сюда б картину какую-нибудь.
	 Комната сама из себя ничего не представляла: четыре стены, на полу книжки, иногда мелькают буквы. ]];
	obj = {'book5', 'book6', vway ('Последний бой', 'Осталось только сделать здесь {картину}','ls')}
}

ls = room{
	nam = 'Модный приговор',
	dsc = [[И что нарисовать? Дом? Стул? Стол? Лисей? Лису? Хм… Кажется, я придумала. Мы люди скромные, поэтому меня.]];
	obj = {vway('Вариант 1', '{vway (...)}^', 'nope'), vway('Вариант 2', '{picture = } ...^', 'nope'), vway('Вариант 3', '{way==} ...^', 'nope'), vway('Вариант 4', ' {pic = } ...', 'preend')},
	
}

preend = room{
	nam = 'Обновленная комната',
	pic = 'pic1.png',
	dsc = [[Отличная картина! Мне нравится. Сразу в комнате стало лучше. Надо будет всем посоветовать такую повесить. Красоту навели теперь можно и дальше.^
	Я оглянулась и увидела незапертую дверь. Теперь главное решить стоит ли идти туда. 
	]];
	obj = {vway('Концовка один', '{Остаться здесь}^',  'end1'), vway('Концовка', '{Уйти}', 'end2')}
}


book5 = obj{
	nam = 'руководство по созданию игр INSTEAD часть 5',
	dsc = [[Красный или синий? А может сразу обе?^ Взять {красную}.^]],
	tak = [[Скоро у меня будет целая коллекция]],
	inv = [[Для создания более красивого перехода обратимся к функции obj.
	 Чтобы ссылка на следующую локацию была не сверху под заголовком пропишем вместе с объявлениями в комнате объектов следующее: ^
	 vway(‘название’, ‘описание со словом, в котором будет {ссылка на объект}’, ‘само название следующей комнаты, которое мы б написали в way ’)^
	 Таким образом мы можем делать разные тесты, разместить переход дальше между объектами и сделать игру понятнее.^
	 obj = {'book2', vway('Серверная','{Вернуться}','laba')};
		  ]],
}

book6 = obj{
	nam = 'руководство по созданию игр INSTEAD часть 6',
	dsc = [[Взять {синюю}.^]],
	tak = [[]],
	inv = [[Без подключения дополнительных модулей изображения мы можем вставлять только на локации. 
	Для этого в файлы своей игры вставьте картинку, а в комнате пропишите pic = ‘путь к изображению’.
	Теперь наша игра станет ярче и красивее.^
	Я поделилась с вами всеми инструментами, которые использовала и знала сама.
	Дальше дело за вами. Искать новую информацию можно в документации INSTEAD или копаться в коде других игр.
	Главное брать то, что понимаешь, тогда чужой код становится твоим. Творите, программируйте, развивайтесь.
	]],
}

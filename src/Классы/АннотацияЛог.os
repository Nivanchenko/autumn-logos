Перем _Префикс;
Перем _УчитыватьИмяКласса;

Процедура ПриРазворачиванииАннотации(ОпределениеАннотации, ПодчиненныеАннотации, ТипВладельцаСвойств, Свойство) Экспорт

	Если _Префикс = "" И _УчитыватьИмяКласса = Ложь Тогда
		ВызватьИсключение СтрШаблон("Для класса %1 не допустимо использовать &Лог с пустым именем и не используя имя класса", ТипВладельцаСвойств);
	КонецЕсли;
	
	Если _Префикс = "" Тогда
		ИмяЛога = ТипВладельцаСвойств;
	Иначе
		ИмяЛога = _Префикс + ?(_УчитыватьИмяКласса, "." + ТипВладельцаСвойств, "");
	КонецЕсли;

	Аннотация = РаботаСАннотациями.НайтиАннотацию(ПодчиненныеАннотации, "Пластилин");
	Аннотация.Параметры[1].Значение = ИмяЛога;
	Аннотация.Параметры[2].Значение = _Префикс;
	
КонецПроцедуры

&Аннотация("Лог")
&Пластилин(Значение = "Лог", Блестяшка = "", Блестяшка = "")
Процедура ПриСозданииОбъекта(Значение = "", УчитыватьИмяКласса = Истина)
	_Префикс = Значение;
	_УчитыватьИмяКласса = УчитыватьИмяКласса;
КонецПроцедуры
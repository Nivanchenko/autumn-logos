
&Лог(Значение = "my.logger.DEBUG", УчитыватьИмяКласса = Ложь)
Перем ЛогБезИмениКлассаСДебагом Экспорт;

&Лог("my.logger.DEBUG")
Перем ЛогСДебагом Экспорт;

&Лог(Значение = "my.logger.fileappender", УчитыватьИмяКласса = Ложь)
Перем ЛогСАппендеромВФайл Экспорт;

&Лог("1")
Перем ЭкспортныйЛог Экспорт;

&Лог(Значение = "4", УчитыватьИмяКласса = Ложь)
Перем ЛогБезИмениКласса Экспорт;

&Лог
Перем ЛогБезПрефикса Экспорт;

Перем _ПриватныйЛог;
Перем ЛогСеттером;

&Желудь
Процедура ПриСозданииОбъекта(
	&Лог("2") ЛогВКонструкторе
	)
	_ПриватныйЛог = ЛогВКонструкторе;
КонецПроцедуры

Функция ПриватныйЛог() Экспорт
	Возврат _ПриватныйЛог;
КонецФункции

&Лог("3")
Процедура УстановитьЛогСеттером(Значение) Экспорт
	ЛогСеттером = Значение;
КонецПроцедуры

Функция ПолучитьЛогСеттером() Экспорт
	Возврат ЛогСеттером;
КонецФункции
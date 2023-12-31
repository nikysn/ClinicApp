# ClinicApp


## Баг 1: В карточке пациента можно добавить дату рождения в будущем.

Где был обнаружен баг:
Баг обнаружен в классе AddModifyPatient пространства имен ClinicApp.XamlPages.

В чем заключался:
Проблема заключалась в том, что приложение позволяло выбирать и сохранять будущие даты рождения пациентов без проверки на корректность.

Как исправили:
Для устранения бага была добавлена дополнительная проверка в метод btnSubmit_Click класса AddModifyPatient. Теперь приложение проверяет, что выбранная дата рождения находится в прошлом или настоящем времени, и выводит соответствующее сообщение об ошибке, если пользователь пытается выбрать будущую дату рождения.

## Баг 2: При вводе даты рождения 00.00.0001 приложение падает.

При вводе такой даты у меня приложение не падает!

## Баг 3: При редактировании существующего обращения пациента, приложение падает.

Где был обнаружен баг:
Проблема была обнаружена в методе ModifyRequest класса ClinicDataRepository.

В чем заключался:
Баг связан с неправильным использованием метода dbContext.Entry(entity).State = EntityState.Modified; в Entity Framework. Метод пытался изменить состояние объекта PatientCard, который не был связан с текущей операцией редактирования обращения пациента.

Как исправили:
Для устранения бага были удалены ненужные строки кода, связанные с объектом PatientCard, в методе ModifyRequest класса ClinicDataRepository. Теперь метод корректно выполняет операцию редактирования обращения пациента без взаимодействия с объектами, которые не относятся к текущей операции.

## Задача: Добавление столбца "Возраст" в форму со списком пациентов.

Что было сделано:
1. Создан конвертер AgeConverter в пространстве имен ClinicApp.XamlPages, реализующий интерфейс IValueConverter.
2. В конвертере AgeConverter рассчитывается полный возраст пациента на текущую дату, учитывая дату рождения.
3. В XAML-ресурсах создан ресурс с именем "AgeConverter" для использования в столбце "Возраст".
4. Добавлен столбец "Возраст" в DataGrid с использованием DataGridTemplateColumn, где применяется конвертер "AgeConverter" для отображения возраста.
5. Ширина столбца "Адрес" была уменьшена, чтобы уместить кнопку "Удалить" и улучшить отображение данных в списке пациентов.
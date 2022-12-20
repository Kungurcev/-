Create table Разговоры
(Номер_разговора int primary key not null,
Номер_абонента int,
Код_телефона int,
Дата_раговора date,
Время int,
Код_города int,
Оплаты nvarchar(50)
)
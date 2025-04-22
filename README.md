# Alidi SQL Test — Аналитика продаж

## 📊 Описание проекта

Решение тестового задания для компании **Alidi**.  
Проект выполнен в виде Jupyter-ноутбука с пошаговым SQL-анализом и проверкой результатов на реальных данных.

## 🧩 Стек технологий

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?logo=postgresql&logoColor=white&style=flat)
![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white&style=flat)
![pgAdmin](https://img.shields.io/badge/pgAdmin-336791?logo=postgresql&style=flat)
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?logo=jupyter&logoColor=white&style=flat)
![pandas](https://img.shields.io/badge/pandas-150458?logo=pandas&logoColor=white&style=flat)
![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white&style=flat)

- **PostgreSQL** — база данных  
- **Docker + docker-compose** — контейнеризация СУБД и pgAdmin  
- **pgAdmin 4** — визуальный интерфейс для работы с PostgreSQL  
- **Jupyter Notebook** — интерактивная среда для анализа  
- **pandas** — обработка SQL-результатов в Python  
- **SQLAlchemy + ipython-sql** — интеграция SQL в Jupyter  
- **Git** — контроль версий  
- **GitHub** — размещение проекта

## 🗂️ Структура проекта

```
alidi/
├── docker-compose.yaml         # Конфигурация PostgreSQL и pgAdmin
├── init/
│   ├── init.sql                # Скрипт инициализации БД: таблицы + данные
│   └── pgpass_file             # Файл для автоматического входа в pgAdmin
├── servers.json                # Конфигурация подключения pgAdmin к PostgreSQL
├── SQL_test_2023.docx          # Тестовое задание от компании
├── test_cleaned.ipynb          # Основной ноутбук с SQL-запросами
└── README.md                   # Описание проекта
```

## 📈 Охваченные задачи

1. Средняя цена продажи по фильтрам  
2. Сравнение продаж со скидкой и без  
3. Расчёт процентов скидки  
4. Топ товаров по регионам  
5. Накопительный итог продаж по месяцам

## ✅ Проверка логики

Каждый SQL-запрос реализован, проверен в Jupyter, результаты сопоставлены с реальными данными.  
В случаях, когда результаты были пустыми — причины проанализированы и описаны.

## ⚙️ Автоматизация подключения pgAdmin

Подключение к базе PostgreSQL в pgAdmin осуществляется автоматически при запуске Docker-контейнеров благодаря файлам:
- `servers.json` — описание подключения
- `pgpass_file` — хранит пароль, исключает ручной ввод логина

## 📎 Комментарий

Проект построен для локального запуска.  
Перед началом работы — запустить `docker-compose up -d`, затем открыть Jupyter Notebook `test_cleaned.ipynb`.

> Сделано для тестового задания Alidi, с акцентом на чистоту SQL, проверку условий, использование аналитических функций и пояснение каждого шага.

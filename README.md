# Apache Spark JDBC Catalog Demo

Демонстрационный проект для работы с Apache Spark и JDBC каталогами для подключения к MySQL базе данных.

## Описание

Этот проект демонстрирует:
- Настройку Apache Spark с JDBC каталогом для MySQL
- Создание таблицы заказов с тестовыми данными
- Использование Spark SQL для работы с внешними базами данных
- Pushdown оптимизации для JDBC запросов

## Структура проекта

```
├── app/                           # Jupyter notebooks
│   └── JDBC catalogs demo.ipynb  # Основной демо notebook
├── scripts/                       # SQL скрипты для инициализации БД
│   ├── 01-create_orders_table.sql # Создание таблицы orders
│   └── 02-insert_sample_orders.sql # Тестовые данные
├── spark_notebook/                # Docker конфигурация для Spark
│   ├── Dockerfile
│   └── spark-defaults.conf       # Настройки Spark
├── spark-events/                  # События Spark (логи)
└── docker-compose.yml            # Docker Compose конфигурация
```

## Технологии

- **Apache Spark** - для обработки данных
- **MySQL 8.0** - база данных
- **Jupyter Notebook** - интерактивная разработка
- **Docker & Docker Compose** - контейнеризация
- **Catalog API** - интеграция Spark с MySQL

## Быстрый старт

### Предварительные требования

- Docker
- Docker Compose

### Запуск проекта

1. Запустите проект:
```bash
docker-compose up -d
```

2. Откройте Jupyter Notebook:
   - URL: http://localhost:8888
   - Токен не требуется (отключена аутентификация)

3. Откройте Spark Web UI:
   - URL: http://localhost:4050

### Подключение к MySQL

- **Хост**: localhost
- **Порт**: 3306
- **База данных**: habr
- **Пользователь**: root
- **Пароль**: root

## Дополнительные ресурсы

- [Apache Spark SQL Documentation](https://spark.apache.org/docs/latest/sql-programming-guide.html)
- [Spark JDBC Data Source](https://spark.apache.org/docs/latest/sql-data-sources-jdbc.html)
- [MySQL JDBC Driver](https://dev.mysql.com/doc/connector-j/8.0/en/)

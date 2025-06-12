![action status](https://gist.githubusercontent.com/KuPriv/10addf2357a528180330d3f6db745d43/raw/92831f8ab4fb1ab32eba7f10954559f0f73ee4f8/git-actions.svg)
![coverage status](https://gist.githubusercontent.com/KuPriv/10addf2357a528180330d3f6db745d43/raw/92831f8ab4fb1ab32eba7f10954559f0f73ee4f8/coverage.svg)

Аналитическая платформа с даш-бордами.

- Технологии
    - Python 3 + Django
    - HTML/CSS + JS
    - PostgreSQL + ClickHouse
    - Redis
    - Celery
    - RabbitMQ
    - pytest, coverage
    - poetry
    - flake8, black, isort, pylint
    - docker
    - YAML

Настроен CI/CD пайплайн на GitHub Actions: состояние сборки, покрытие тестами

ФУНКЦИОНАЛЬНОСТЬ:

Система аутентификации и авторизации

- Регистрация и авторизация пользователей
- Разные роли пользователей (админ, аналитик, пользователь)

Подсистема импорта данных

- Загрузка CSV/Excel файлов
- Интеграция с внешними API (можно использовать открытые API)
- Периодические задачи по обновлению данных через Celery и Redis

Хранение и обработка данных

- Основное хранилище в PostgreSQL
- Аналитические запросы через ClickHouse

Визуализация данных

- Настраиваемые дашборды с графиками
- Выгрузка отчетов в PDF/Excel
- Базовые элементы фронтенда с минимальным использованием HTML/CSS

Система уведомлений

- Оповещения о завершении обработки данных
- Алерты при достижении заданных пороговых значений
- Очередь задач - RabbitMQ
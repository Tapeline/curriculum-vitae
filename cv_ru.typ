#import "template/template.typ": *
#import "template/contacts.typ": *
#import "template/skills.typ": *

#let today = datetime.today()

#show: resume.with(
  author: (
    firstname: "Илья",
    lastname: "Солин",
    positions: ("Junior+ Backend Developer",)
  )
)
#contacts

#resume_item[
  Я бэкенд-разработчик с опытом на нескольких языках. Контрибьютор в опенсорс-проекты (cpython, faststream), интересуюсь ФП, внутрянкой технологий, на которых пишу. Люблю делать всякие интересные пет-проекты (см. ниже).
] 

#resume_section("Образование")

#work_experience_item_header(
  "Центральный Университет",
  "бакалавриат, очная",
  "Математика и компьютерные науки",
  "2026-2030"
)

#resume_section("Опыт работы")

#work_experience_item_header(
  "T-Bank",
  "гибридный",
  "Kotlin Backend Developer",
  "Июн. 2026 - н.в."
)

#resume_item[
  - Внедрил защитные и QoL фичи для менеджмента во внутренней админке, существенно снизился риск фин. потерь из-за направильного таргетирования

  - Глобально отрефакторил запущенный проект: -20% строк из кодовой базы, в 2 раза быстрее пайплайны, мигрировал 5 интеграций в смежных сервисах с устаревшего API

  - Улучшал надёжность и мониторинг, разработал и продвигал внутреннее решение для проверки алертов
]

#work_experience_item_header(
  "Bytes2B",
  "удалённо",
  "Python Backend Developer",
  "Июл. 2025 - Сен. 2025",
)

#resume_item[
  - Предложил и внедрил единые стандарты разработки, включая статический
    анализ и стиль кода (ruff, mypy, wemake-python-styleguide),
    а также стандарта логирования. В результате повысил качество и
    поддерживаемость кодовой базы.

  - Систематизировал процессы и знания в команде, создав с нуля базу знаний
    с описанием домена, диаграммами архитектуры, онбординг-гайдами и регламентами по
    ключевым процессам (жизненный цикл задачи, код-ревью, тестирование,
    использование ИИ). Как результат, ускорил онбординг новых сотрудников и
    сделал процессы разработки более прозрачными.

  - Разрабатывал сервисы и внутренние библиотеки для упрощения асинхронного
    общения между сервисами, разрабатывал внутренний надпротокол для этого.
    Настраивал GitLab CI пайплайны для тестирования и сборки (пакетов и Docker-образов).
]

#resume_section("Личные проекты")

#personal_project_item_header(
  "Dockingjudge",
  "Python, DRF, Litestar, Faststream, dishka, React, MUIv1, +-Microservices",
  "2024",
)

#resume_item[
  - Разработал состоящее из многих сервисов full-stack приложение для проведения
    контестов по программированию.
  - Внедрил мониторинг (сбор логов, метрик, визуализацию в Grafana)
  - Реализовал изолированное выполнение пользовательского кода.
  - Использовал HTTP REST API и RabbitMQ для коммуникации между сервисами.

  #link("https://docs.dockingjudge.tapeline.dev/")[#"docs.dockingjudge.tapeline.dev"],
  #link("https://github.com/Tapeline/Dockingjudge/")[#"github.com/Tapeline/Dockingjudge"]
]

#personal_project_item_header(
  "Taskstorm",
  "Python, DRF, React, Bootstrap 5, Celery",
  "2024",
)

#resume_item[
  - Разработал бэкенд и фронтенд для приложения по трекингу задач.
  - Реализовал web push уведомления.
  - Реализовал real-time совместное редактирование документов (как в Google Docs)
  - Использовал Celery для фоновых задач.

  #link("https://github.com/Tapeline/Taskstorm/")[#"github.com/Tapeline/Taskstorm"]
]

#personal_project_item_header(
  "Quail",
  "Java",
  "2021-2023",
)

#resume_item[
  - Интерпретатор собственного языка программирования
  - Поддержка нескольких парадигм (prototype-based OOP, немного ФП)
  - Экосистема (дебаггер, генерация документации, библиотеки)
]

#resume_section("Вклад в Open Source")

#resume_item[
  - cpython:
    Правил баги специализации и неточную документацию.

    #link("https://github.com/python/cpython/")[#"github.com/python/cpython"]

  - dishka:
    Рефакторинг и изменения документации для лучшего восприятия.

    #link("https://github.com/reagento/dishka/")[#"github.com/reagento/dishka"]

  - wemake-python-styleguide:
    Правил баги, добавил CLI утилиту для просмотра описания кодов и добавлял новые правила линтера.

    #link("https://github.com/wemake-services/wemake-python-styleguide/")[#"github.com/wemake-services/wemake-python-styleguide"]

  - faststream:
    Рефакторинг генератора AsyncAPI спецификации.

    #link("https://github.com/ag2ai/faststream/")[#"github.com/ag2ai/faststream"]
]

#resume_section("Навыки")

#skill_item(
  "Языки прог-я",
  lang_skills
)

#skill_item(
  "Библиотеки",
  lib_skills
)

#skill_item(
  "Инфраструктура",
  infra_skills
)

#skill_item(
  "Языки",
  ("Английский ― B2-C1",)
)

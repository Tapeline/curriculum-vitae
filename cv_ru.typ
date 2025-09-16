#import "template/template.typ": *
#import "template/contacts.typ": *
#import "template/skills.typ": *

#let today = datetime.today()

#show: resume.with(
  author: (
    firstname: "Илья",
    lastname: "Солин",
    positions: ()
  )
)
#contacts

#resume_section("Опыт работы")

#work_experience_item_header(
  "Bytes2B",
  "удалённо",
  "Python Backend Developer",
  "Июл. 2025 - Сен. 2025",
)

#resume_item[
  - Разрабатывал сервисы и внутренние библиотеки для упрощения асинхронного общения между сервисами,
    разрабатывал внутренний надпротокол для этого;
  - Активно внедрял линтеры (ruff, mypy, wemake-python-styleguide, import-linter);
  - Инициировал создание корпоративной документации и написал её (описание домена, сервисов,
    внутренних библиотек, онбординг и гайдлайны);
  - Настраивал GitLab CI пайплайны для тестирования и сборки (пакетов и Docker-образов);
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

#resume_section("Вклад в опенсорс")

#resume_item[
  - cpython:
    Правил баги специализации и неточную документацию.
    #link("https://github.com/python/cpython/")[#"github.com/python/cpython"]

  - dishka:
    Рефакторинг и улучшение документации для лучшего восприятия.
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
  "Инструменты",
  tool_skills
)

#skill_item(
  "Прочее",
  other_skills
)

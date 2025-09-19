#import "template/template.typ": *
#import "template/contacts.typ": *
#import "template/skills.typ": *

#let today = datetime.today()

#show: resume.with(
  author: (
    firstname: "Ilya",
    lastname: "Solin",
    positions: ()
  )
)
#contacts

#resume_section("Work Experience")

#work_experience_item_header(
  "Bytes2B",
  "remote",
  "Python Backend Developer",
  "Jul. 2025 - Sep. 2025",
)

#resume_item[
  - Joined a team that lacked a unified code style and documentation,
    which slowed down development and onboarding.
  - Initiated and implemented a single standard for static analysis
    and code style for all services (ruff, mypy, wemake-python-styleguide)
    and a unified logging standard.
  - Created a knowledge base: documented existing services (using the C4 model),
    described the business domain, and developed onboarding guides.
  - Wrote guidelines for the team's work processes: task lifecycle, code review,
    test writing, and using AI for code generation.
  - Improved code quality and maintainability, accelerated the onboarding of
    new employees, and made development processes more transparent.
  - Developed services and internal libraries to simplify asynchronous
    communication between services, and developed an internal high-level protocol for it.
  - Configured GitLab CI pipelines for testing and building (packages and Docker images).
]

#resume_section("Personal Projects")

#personal_project_item_header(
  "Dockingjudge",
  "Python, DRF, Litestar, Faststream, dishka, React, MUIv1, +-Microservices",
  "2024",
)

#resume_item[
  - Developed a multi-service full-stack application for hosting programming contests.
  - Implemented monitoring (log and metric collection, visualization in Grafana).
  - Implemented isolated execution of user-submitted code.
  - Used HTTP REST API and RabbitMQ for inter-service communication.

  #link("https://docs.dockingjudge.tapeline.dev/")[#"docs.dockingjudge.tapeline.dev"],
  #link("https://github.com/Tapeline/Dockingjudge/")[#"github.com/Tapeline/Dockingjudge"]
]

#personal_project_item_header(
  "Taskstorm",
  "Python, DRF, React, Bootstrap 5, Celery",
  "2024",
)

#resume_item[
  - Developed both the backend and frontend for a task tracking application.
  - Implemented web push notifications.
  - Implemented real-time collaborative document editing (similar to Google Docs).
  - Used Celery for background tasks.

  #link("https://github.com/Tapeline/Taskstorm/")[#"github.com/Tapeline/Taskstorm"]
]

#resume_section("Open Source Contributions")

#resume_item[
  - cpython:
    Fixed bugs related to specialization and corrected inaccurate documentation.

    #link("https://github.com/python/cpython/")[#"github.com/python/cpython"]

  - dishka:
    Refactored code and clarified documentation.

    #link("https://github.com/reagento/dishka/")[#"github.com/reagento/dishka"]

  - wemake-python-styleguide:
    Fixed bugs, added a CLI utility to view rule descriptions, and implemented new linter rules.

    #link("https://github.com/wemake-services/wemake-python-styleguide/")[#"github.com/wemake-services/wemake-python-styleguide"]

  - faststream:
    Refactored the AsyncAPI specification generator.

    #link("https://github.com/ag2ai/faststream/")[#"github.com/ag2ai/faststream"]
]

#resume_section("Skills")

#skill_item(
  "Programming Langs",
  lang_skills
)

#skill_item(
  "Libraries",
  lib_skills
)

#skill_item(
  "Infrastructure",
  infra_skills
)

#skill_item(
  "Tools",
  tool_skills
)

#skill_item(
  "Other",
  other_skills
)

#skill_item(
  "Languages",
  ("Russian ― Native", "English ― B2-C1")
)

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
  - Developed services and internal libraries to simplify asynchronous communication between services,
    including the creation of an internal protocol for this purpose;
  - Actively integrated linters (ruff, mypy, wemake-python-styleguide, import-linter);
  - Initiated the creation of and authored enterprise documentation (covering domain description, services,
    internal libraries, onboarding, and guidelines);
  - Configured GitLab CI pipelines for testing and building (packages and Docker images);
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

#!/usr/bin/env bash

if ! pipx -h > /dev/null 2>&1 ; then
  echo Installing pipx...
  brew install pipx
fi

pipx install argcomplete --python /usr/local/bin/python3
pipx install clf --python /usr/local/bin/python3
pipx install csvkit --python /usr/local/bin/python3
pipx install eg --python /usr/local/bin/python3
pipx install em-keyboard --python /usr/local/bin/python3
pipx install glances --python /usr/local/bin/python3
pipx install hashin --python /usr/local/bin/python3
pipx install howdoi --python /usr/local/bin/python3
pipx install ntfy[pid,emoji,slack] --python /usr/local/bin/python3
pipx install pip-tools --python /usr/local/bin/python3
pipx install proselint --python /usr/local/bin/python3
pipx install pydocstyle --python /usr/local/bin/python3
pipx install pyflakes --python /usr/local/bin/python3
pipx install pyjokes --python /usr/local/bin/python3
pipx install pylint --python /usr/local/bin/python3
pipx install psutil --python /usr/local/bin/python3
pipx install safety --python /usr/local/bin/python3
pipx install searchcmd --python /usr/local/bin/python3
pipx install slacker --python /usr/local/bin/python3
pipx install tldr --python /usr/local/bin/python3
pipx install twine --python /usr/local/bin/python3
pipx install uncommitted --python /usr/local/bin/python3
pipx install yapf --python /usr/local/bin/python3

pipx install flake8 --python /usr/local/bin/python3
pipx inject flake8 cohesion
pipx inject flake8 flake8-annotations-complexity
pipx inject flake8 flake8-annotations-coverage
pipx inject flake8 flake8-assertive
pipx inject flake8 flake8-bandit
pipx inject flake8 flake8-broken-line
pipx inject flake8 flake8-bugbear
pipx inject flake8 flake8-builtins
pipx inject flake8 flake8-coding
pipx inject flake8 flake8-commas
pipx inject flake8 flake8-comprehensions
pipx inject flake8 flake8-debugger
pipx inject flake8 flake8-deprecated
pipx inject flake8 flake8-docstrings
pipx inject flake8 flake8_dodgy
pipx inject flake8 flake8-eradicate
pipx inject flake8 flake8-fixme
pipx inject flake8 flake8-future-import
pipx inject flake8 flake8-import-order
pipx inject flake8 flake8-imports
pipx inject flake8 flake8-isort
pipx inject flake8 flake8-logging-format
pipx inject flake8 flake8-mock
pipx inject flake8 flake8-mutable
pipx inject flake8 flake8-mypy
pipx inject flake8 flake8-pep3101
pipx inject flake8 flake8-print
pipx inject flake8 flake8-pyi
pipx inject flake8 flake8-quotes
pipx inject flake8 flake8-spellcheck
pipx inject flake8 flake8-strict
pipx inject flake8 flake8-string-format
pipx inject flake8 flake8-tidy-imports
pipx inject flake8 flake8-variables-names
pipx inject flake8 flake8_tuple
pipx inject flake8 pep8-naming

pipx install pytest --python /usr/local/bin/python3
pipx inject pytest pytest-profiling
pipx inject pytest pytest-sugar
pipx inject pytest pytest-xdist
# pytest-cov
# pytest-flakes
# pytest-pep8

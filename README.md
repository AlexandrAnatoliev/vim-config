<div align="center">

  <a id="english"></a>
  <h1>My Vim configuration</h1>

  [![EN](https://img.shields.io/badge/English-🇬🇧-blue)](#english)
  [![RU](https://img.shields.io/badge/Русский-🇷🇺-red)](#russian)
  ![Version 0.1.4](https://img.shields.io/badge/Version-0.1.4-orange.svg)
  ![Stars](https://img.shields.io/github/stars/AlexandrAnatoliev/vim-config.svg?style=flat)
  ![Forks](https://img.shields.io/github/forks/AlexandrAnatoliev/vim-config.svg?style=flat)
  ![GitHub repo size](https://img.shields.io/github/repo-size/AlexandrAnatoliev/vim-config)
</div>

  > **Author:** Alexandr Anatoliev

  > **GitHub:** [AlexandrAnatoliev](https://github.com/AlexandrAnatoliev)

---

<div align="center">
  <h2>Content</h2>
</div>

* [Features](#features)
* [Installation](#installation)
* [Uninstallation](#uninstallation)

---

<div align="center">
  <a id="features"></a>
  <h2>Features</h2>
</div>

* Code completion using dictionary sources
* Java-written plugin modules

---

<div align="center">
  <a id="installation"></a>
  <h2>Installation</h2>
</div>

* Clone the repository:
```
git clone https://github.com/AlexandrAnatoliev/vim-config 
```

* Rename the configuration folder:
```
mv vim-config .vim
```

* Reload Vim or execute command:

```
:source ~/.vim/vimrc
```

---

<div align="center">
  <a id="installation"></a>
  <h2>Uninstallation</h2>
</div>

* Delete the `.vim/` folder:
```
rm -rf .vim
```
---

<div align="center">
  <h2>Plugin Uninstallation</h2>
</div>

* To uninstall the plugin using the script:
```
./scripts/uninstall_plugin.sh [plugin]
```

---

<div align="center">
  <h2>Files Structure</h2>
</div>

```
jvim-plugins 
├── pomodoro
├── README.md
└── scripts
    ├── build.sh
    ├── build_and_run_tests.sh
    ├── check_jdk.sh
    ├── check_junit.sh
    ├── check_vim.sh
    ├── compile.sh
    ├── compile_tests.sh
    ├── copy_plugin_to_vim.sh
    ├── install_plugin.sh
    ├── run_tests.sh
    └── uninstall_plugin.sh
```
 
---

<div align="center">
  <h2>Script Usage</h2>
</div>

The `install_plugin.sh [plugin]` script runs the following scripts sequentially:
* `build.sh [plugin]` - builds plugin Java files;
* `build_and_run_tests.sh [plugin]` - runs JUnit tests;
* `copy_plugin_to_vim.sh [plugin]` - copies the build plugin to the appropriate 
Vim directory;

The `install_plugin.sh [plugin] --no-test` script runs without testing:
* `build.sh [plugin]`
* `copy_plugin_to_vim.sh [plugin]`

Script for automatic plugin build:
```
./scripts/build.sh [plugin]
```

This script runs:
* Checks if Vim is installed
```
./scripts/check_vim.sh
```

* Checks if JDK is installed
```
./scripts/check_jdk.sh
```

* Compiles Java files 
```
./scripts/compile.sh [plugin]
```

Script for automatic compilation and test execution
```
./scripts/build_and_run_tests.sh [plugin]
```

This script runs:
* Checks if JUnit is installed
```
./scripts/check_junit.sh
```

* Compiles JUnit classes 
```
./scripts/compile_tests.sh [plugin]
```

* Runs tests:
```
./scripts/run_tests.sh [plugin]
```

---

<div align="center">
  <h2>Plugin List</h2>
</div>
 
<div align="center">
  <h3>Pomodoro Plugin</h3>
</div>

[pomodoro](pomodoro/README.md) - Simple Vim pomodoro plugin.

Use Vim to edit files, and after 25 minutes it will change Vim's color scheme 
to remind you to take a break.
Designed for self-monitoring and productivity.

<div align="center">
  <h4>Plugin installation</h4>
</div>

* with test execution:
```
./scripts/install_plugin.sh pomodoro
```

* without running tests:
```
./scripts/install_plugin.sh pomodoro --no-test
```

<div align="center">
  <h4>Plugin uninstallation</h4>
</div>

```
./scripts/uninstall_plugin.sh pomodoro
```

---

<div align="center">
  <h2>Requirements</h2>
</div>
 
* Java installed
* Vim installed
* JUnit 5 installed (optional)

---

<div align="center">
  <h2>Compatibility</h2>
</div>
 
* Vim 7.0 and above
* Java 8 and above

---

<div align="center">

  <a id="russian"></a>
  <h1>Мой Vim кофиг</h1>
  <p>Пишу их учебных целях для проверки взаимодействия Vim и Java</p>

  [![EN](https://img.shields.io/badge/English-🇬🇧-blue)](#english)
  [![RU](https://img.shields.io/badge/Русский-🇷🇺-red)](#russian)
  ![Version 0.1.4](https://img.shields.io/badge/Version-0.1.4-orange.svg)
  ![Stars](https://img.shields.io/github/stars/AlexandrAnatoliev/vim-config.svg?style=flat)
  ![Forks](https://img.shields.io/github/forks/AlexandrAnatoliev/vim-config.svg?style=flat)
  ![GitHub repo size](https://img.shields.io/github/repo-size/AlexandrAnatoliev/vim-config)

</div>

  > **Author:** Alexandr Anatoliev

  > **GitHub:** [AlexandrAnatoliev](https://github.com/AlexandrAnatoliev)

---

<div align="center">
  <h2>Содержание</h2>
</div>

* [Особенности](#ru-features)
* [Установка](#ru-installation)
* [Удаление](#ru-uninstallation)

---

<div align="center">
  <a id="ru-features"></a>
  <h2>Особенности</h2>
</div>

* Автодополнение кода с использованием словарей
* Подключаемые плагины, написанные на Java

---
<div align="center">
  <a id="ru-installation"></a>
  <h2>Установка</h2>
</div>

* Клонируйте репозиторий:
```
git clone https://github.com/AlexandrAnatoliev/vim-config 
```

* Переименуйте папку с конфигом:
```
mv vim-config .vim
```

* Перезагрузите Vim или выполните команду:

```
:source ~/.vim/vimrc
```

---

<div align="center">
  <a id="ru-uninstallation"></a>
  <h2>Удаление</h2>
</div>

* Удалите папку `.vim/`:
```
rm -rf .vim
```

---

<div align="center">
  <h2>Структура файлов</h2>
</div>

```
jvim-plugins 
├── pomodoro
├── README.md
└── scripts
    ├── build.sh
    ├── build_and_run_tests.sh
    ├── check_jdk.sh
    ├── check_junit.sh
    ├── check_vim.sh
    ├── compile.sh
    ├── compile_tests.sh
    ├── copy_plugin_to_vim.sh
    ├── install_plugin.sh
    ├── run_tests.sh
    └── uninstall_plugin.sh
```
 
---

<div align="center">
  <h2>Использование скриптов</h2>
</div>

Скрипт `install_plugin.sh [plugin]` выполняет следующие скрипты последовательно:
* `build.sh [plugin]` - сборка Java файлов плагина;
* `build_and_run_tests.sh [plugin]` - сборка и запуск JUnit тестов;
* `copy_plugin_to_vim.sh [plugin]` - копирование собранного плагина в 
соответствующую директорию Vim.

Скрипт `install_plugin.sh [plugin] --no-test` выполняется без тестирования:
* `build.sh [plugin]`
* `copy_plugin_to_vim.sh [plugin]`

Скрипт для автоматической сборки плагина:
```
./scripts/build.sh [plugin]
```

Этот скрипт выполняет:
* Проверяет установлен ли Vim
```
./scripts/check_vim.sh
```

* Проверяет установлен ли JDK
```
./scripts/check_jdk.sh
```

* Компилирует Java файлы
```
./scripts/compile.sh [plugin]
```

Скрипт для автоматической компиляции и выполнения тестов
```
./scripts/build_and_run_tests.sh [plugin]
```

Этот скрипт выполняет:
* Проверяет установлен ли JUnit
```
./scripts/check_junit.sh
```

* Компилирует JUnit классы
```
./scripts/compile_tests.sh [plugin]
```

* Запускает тесты:
```
./scripts/run_tests.sh [plugin]
```

---

<div align="center">
  <h2>Список плагинов</h2>
</div>
 
<div align="center">
  <h3>Pomodoro плагин</h3>
</div>

[pomodoro](pomodoro/README.md) - Простой Pomodoro плагин для Vim.

Используйте Vim для редактирования файлов и через 25 минут он изменит цветовую
схему Vim, чтобы напомнить вам о необходимости сделать перерыв. Разработан для 
самоконтороля и эффективности.

<div align="center">
  <h4>Установка</h4>
</div>

* с выполнением тестов:
```
./scripts/install_plugin.sh pomodoro
```

* без запуска тестов:
```
./scripts/install_plugin.sh pomodoro --no-test
```

<div align="center">
  <h4>Удаление плагина</h4>
</div>

```
./scripts/uninstall_plugin.sh pomodoro
```

---

<div align="center">
  <h2>Требования</h2>
</div>
 
* Установленная Java
* Установленный Vim
* Установленный JUnit (опционально)

---

<div align="center">
  <h2>Совместимость</h2>
</div>
 
* Vim 7.0 и выше
* Java 8 и выше

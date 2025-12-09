<div align="center">

  <a id="english"></a>
  <h1>My Vim configuration</h1>

  [![EN](https://img.shields.io/badge/English-🇬🇧-blue)](#english)
  [![RU](https://img.shields.io/badge/Русский-🇷🇺-red)](#russian)
  ![Version 0.1.9](https://img.shields.io/badge/Version-0.1.9-orange.svg)
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
* [Files Structure](#structure)

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
  <a id="structure"></a>
  <h2>Files Structure</h2>
</div>

```
.vim/ 
├── autocomplete.vim
├── colorscheme.vim
├── maps.vim
├── pack
├── README.md
├── spell
└── vimrc
```
 
[autocomplete.vim](autocomplete.vim) - Simple Vim autocomplete with hint.

During word input, a suggestion menu appears. Autocomplete words are organized 
into language-specific dictionaries:

```
.vim/ 
├── .bashdict         // bash
├── .cssdict          // CSS
├── .htmldict         // html
├── .javadict         // Java
├── .jspdict          // jsp
├── .markdowndict     // markdown
├── .postgresqldict   // sql
├── .semverdict       // SemVer keywords
├── .thesaurus        // Java classes methods
├── .vimscriptdict    // vimscript
├── autocomplete.vim
└── vimrc
```

[colorscheme.vim](colorscheme.vim) 
* Changes color scheme evening to remind me to end work and go to bed.
* Sets a gray bar at the 80th character, limiting line length.

[maps.vim](maps.vim) - Vim mappings
* Space is used as \<leader\> 
* \<leader\>e - to open a terminal on the left side
* \<leader\>w - to open a todo list on the right side
* Window navigation mappings:
  - \<leader\>h - to left 
  - \<leader\>l - to right 
  - \<leader\>j - down
  - \<leader\>k - up
* \<leader\>o - close other windows  
* \<leader\>\<Esc\> - terminal to normal mode
* \<leader\>\<Tab\> - buffer navigation mappings 
* \<leader\>\/ - to comment a line 
* \<c-u\> - word to upper case

---

<div align="center">
  <h2>Requirements</h2>
</div>
 
* Vim installed

---

<div align="center">
  <h2>Compatibility</h2>
</div>
 
* Vim 8.0 and above

---

<div align="center">

  <a id="russian"></a>
  <h1>Мой Vim конфиг</h1>

  [![EN](https://img.shields.io/badge/English-🇬🇧-blue)](#english)
  [![RU](https://img.shields.io/badge/Русский-🇷🇺-red)](#russian)
  ![Version 0.1.9](https://img.shields.io/badge/Version-0.1.9-orange.svg)
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
* [Структура](#ru-structure)

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
  <a id="ru-structure"></a>
  <h2>Структура</h2>
</div>

```
.vim/ 
├── autocomplete.vim
├── colorscheme.vim
├── maps.vim
├── pack
├── README.md
├── spell
└── vimrc
```
 
[autocomplete.vim](autocomplete.vim) - Простое автодополнение Vim с подсказками.

При вводе слова всплывает меню с вариантами автодополнения. Слова для 
автодополнения сгруппированы по языкам в словари:

```
.vim/ 
├── .bashdict         // bash
├── .cssdict          // CSS
├── .htmldict         // html
├── .javadict         // Java
├── .jspdict          // jsp
├── .markdowndict     // markdown
├── .postgresqldict   // sql
├── .semverdict       // SemVer keywords
├── .thesaurus        // Java classes methods
├── .vimscriptdict    // vimscript
├── autocomplete.vim
└── vimrc
```

[colorscheme.vim](colorscheme.vim) 
* Содержит функцию, которая меняет в вечернее время цветовую схему, 
напоминая о необходимости отдохнуть.
* Также устанавливает серую полосу на 80 символе, ограничивая длину строки.

[maps.vim](maps.vim) - Vim mappings
* В качестве \<leader\> используется пробел
* \<leader\>e - открыть терминал с левой стороны
* \<leader\>w - открыть **todo** лист с правой стороны
* Перемещение между окнами:
  - \<leader\>h - влево 
  - \<leader\>l - вправо 
  - \<leader\>j - вниз   
  - \<leader\>k - вверх 
* \<leader\>o - закрыть другие окна  
* \<leader\>\<Esc\> - терминал в нормальный режим
* \<leader\>\<Tab\> - переключение между буферами 
* \<leader\>\/ - закомментировать строку 
* \<c-u\> - перевести слово в верхний регистр

---

<div align="center">
  <h2>Требования</h2>
</div>
 
* Установленный Vim

---

<div align="center">
  <h2>Совместимость</h2>
</div>
 
* Vim 8.0 и выше

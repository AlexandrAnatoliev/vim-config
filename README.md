<div align="center">

  <a id="english"></a>
  <h1>My Vim configuration</h1>

  [![EN](https://img.shields.io/badge/English-🇬🇧-blue)](#english)
  [![RU](https://img.shields.io/badge/Русский-🇷🇺-red)](#russian)
  ![Version 0.1.44](https://img.shields.io/badge/Version-0.1.44-orange.svg)
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
* Java boilerplates
* Custom key mappings
* Color scheme with work-time reminder 

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
├── boilerplates.vim
├── colorscheme.vim
├── comment_maps.vim
├── grep-operator.vim
├── help.vim
├── html_tags.vim
├── jshell_word.vim
├── maps.vim
├── quickfix_toggle.vim
├── README.md
├── statusline.vim
├── todo.vim
├── trail_spot.vim
└── vimrc
```

 [autocomplete.vim](autocomplete.vim) - Simple Vim autocomplete with hint

During word input, a suggestion menu appears. Autocomplete words are organized 
into language-specific dictionaries:

 Features:
* set dictionaries for autocomplete 
* autocomplete while typing (from dictionaries)
* autocomplete class methods (from thesaurus)
  - \<leader\>n - add method after Java class
* curly brackets autocomplete 

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

[boilerplates.vim](boilerplates.vim) - Simple Vim Java boilerplates
* `sout` - expands to `System.out.println();`
* `souf` - expands to `System.out.printf();`
* `psvm` - expands to `public static void main(String[] args) { }`
* `fori` - expands to `for (int i = 0; i < ; i++) { }`

[colorscheme.vim](colorscheme.vim) 
* Changes color scheme evening to remind me to end work and go to bed.
* Highlights all characters in virtual column 80 and more, limiting line length.

[comment_maps.vim](comment_maps.vim) - Vim mappings to comment-out code lines 
in various languages 
  - \<leader\>\/ - to comment-out or uncomment a line 

[grep-operator.vim](grep-operator.vim) - Simple Vim grep plugin 
  - \<leader\>g - to search word in project recursively 
  - ]t - moving between matches 
  - [t - moving between matches

[help.vim](help.vim) - Display Vim hot keys 
  - \<leader\>? - get help popup menu 
  - q - close menu
  - j - moving in menu
  - k - moving in menu

[html_tags.vim](html_tags.vim) - Simple Vim autocomplete html tags 

[jshell_word.vim](jshell_word.vim) - Search word in jshell plugin 
  - \<leader\>js - to search word in jshell 

[maps.vim](maps.vim) - Vim mappings
* Space is used as \<leader\> 
* Window management:
  - \<leader\>e - open /close terminal left
  - \<leader\>w - open / close a **todo** list on the right side
  - \<leader\>h - to left 
  - \<leader\>l - to right 
  - \<leader\>j - down
  - \<leader\>k - up
  - \<leader\>o - close other windows  
* Buffer and Mode:
  - \<leader\>\<Tab\> - buffer navigation mappings 
  - \<leader\>\<Esc\> - terminal to normal mode
* Text Operations:
  - \<leader\>u - word to upper / lower case
  - \<leader\>" - wrap / unwrap word in "quotes" 
  - \<leader\>' - wrap / unwrap word in 'quotes'
  - \<leader\>" - wrap / unwrap visually selected text by "quotes"
  - \<leader\>' - wrap / unwrap visually selected text by 'quotes'
  - \<leader\>f - file autoformat
* Configuration:
  - \<leader\>ev - open vimrc file
  - \<leader\>sv - source change vimrc
* Navigation:
  - H - move to the beginning of the current line
  - L - move to the end of the current line

[quickfix_toggle.vim](quickfix_toggle.vim) - Open / close quickfix window plugin 
  - \<leader\>q - open / close quickfix window

[statusline.vim](statusline.vim) - Simple Vim statusline settings 

[todo.vim](todo.vim) - TODO Vim plugin 
  - \<leader\>t - add TODO comments 
  - ]t - moving between TODO comments
  - [t - moving between TODO comments

[trail_spot.vim](trail_spot.vim) - Highlight trailing whitespace as error 
  - \<leader\>s - highlight trailing whitespace 
  - \<leader\>S - clear the highlight

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
  ![Version 0.1.44](https://img.shields.io/badge/Version-0.1.44-orange.svg)
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
* Java бойлерплэты
* Кастомные маппинги
* Цветовая схема с напоминанием об отдыхе 

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
├── boilerplates.vim
├── colorscheme.vim
├── comment_maps.vim
├── grep-operator.vim
├── help.vim
├── html_tags.vim
├── jshell_word.vim
├── maps.vim
├── quickfix_toggle.vim
├── README.md
├── statusline.vim
├── todo.vim
├── trail_spot.vim
└── vimrc
```
 
[autocomplete.vim](autocomplete.vim) - Простое Vim автодополнение с подсказками

При вводе слова всплывает меню с вариантами автодополнения. Слова для 
автодополнения сгруппированы по языкам в словари:

Особенности:
* устанавливает словари 
* автодополняет слова при вводе (из словарей)
* автодополняет методы класса (из тезариуса)
  - \<leader\>n - добавить метод к Java классу
* автозавершение фигурных скобок 

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

[boilerplates.vim](boilerplates.vim) - Простые бойлерплэты для Java 
* sout - System.out.println();
* souf - System.out.printf();
* psvm - public static void main(String[] args) { }
* fori - for (int i = 0; i < ; i++) { }

[colorscheme.vim](colorscheme.vim) 
* Содержит функцию, которая меняет в вечернее время цветовую схему, 
напоминая о необходимости отдохнуть.
* Также окрашивает все символы за пределами 80, ограничивая длину строки.

[comment_maps.vim](comment_maps.vim) - Vim маппинг для закомментирования кода
для различных языков программирования
  - \<leader\>\/ - закомментировать / раскомментировать строку 

[grep-operator.vim](grep-operator.vim) - Простой grep vim плагин 
  - \<leader\>g - найти слово в проекте рекурсивно 
  - ]g - перемещение между совпадениями
  - [g - перемещение между совпадениями

[help.vim](help.vim) - Выводит всплывающее меню с горячими клавишами 
  - \<leader\>? - вывести меню 
  - q - закрыть 
  - j - вниз
  - k - вверх

[html_tags.vim](html_tags.vim) - Простое автодополнение html тегов в Vim 

[jshell_word.vim](jshell_word.vim) - Плагин для поиска слова в jshell 
  - \<leader\>js - найти слово в jshell 

[maps.vim](maps.vim) - Vim mappings
* В качестве \<leader\> используется пробел
* Управление окнами:
  - \<leader\>e - открыть / закрыть терминал слева
  - \<leader\>w - открыть / закрыть **todo** лист с правой стороны
  - \<leader\>h - влево 
  - \<leader\>l - вправо 
  - \<leader\>j - вниз   
  - \<leader\>k - вверх 
  - \<leader\>o - закрыть другие окна  
* Буферы и режимы:
  - \<leader\>\<Tab\> - переключение между буферами 
  - \<leader\>\<Esc\> - терминал в нормальный режим
* Работа с текстом:
  - \<leader\>u - перевести слово в верхний / нижний регистр
  - \<leader\>" - обернуть слово в "кавычки" / убрать
  - \<leader\>' - обернуть слово в 'кавычки' / убрать 
  - \<leader\>" - обернуть выделенный текст в "кавычки" / убрать
  - \<leader\>' - обернуть выделенный текст в 'кавычки' / убрать
  - \<leader\>f - автоформатирование файла
* Конфигурация:
  - \<leader\>ev - открыть vimrc
  - \<leader\>sv - загрузить измененный vimrc
* Навигация:
  - H - к началу строки
  - L - в конец строки
  
[quickfix_toggle.vim](quickfix_toggle.vim) - Плагин для открытия / закрытия quickfix окна 
  - \<leader\>q - открыть / закрыть

[statusline.vim](statusline.vim) - Простые настройки для statusline Vim 

[todo.vim](todo.vim) - TODO Vim плагин 
  - \<leader\>t - добавить TODO комментарий 
  - ]t - перемещение между TODO комментариями
  - [t - перемещение между TODO комментариями

[trail_spot.vim](trail_spot.vim) - Подсвечивает пробелы в конце строки как ошибку 
  - \<leader\>s - подсветить пробелы в конце строки 
  - \<leader\>S - убрать подсветку

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

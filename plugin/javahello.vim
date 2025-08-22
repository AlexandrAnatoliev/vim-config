" Упрощенная версия Java плагина
if exists("g:loaded_javahello")
    finish
endif
let g:loaded_javahello = 1

command! -nargs=0 JavaHello call s:RunJavaHello()

function! s:RunJavaHello()
    " Запускаем Java программу и получаем результат
    let result = system('java -cp ~/.vim/java JavaHello')

    " Проверяем ошибки
    if v:shell_error != 0
        echo "Ошибка: " . result
    else
        " Выводим результат
        echo result
    endif
endfunction

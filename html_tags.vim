" ==================================================================
" File: html_tags.vim
" Description: Simple Vim autocomplete html tags 
" Author: AlexandAnatoliev
" Version: 0.1.18
" Last Modified: 27.12.2025
" ==================================================================

augroup HtmlTags
    autocmd!
    " document structure {{{
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<html> <html></html><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<head> <head></head><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<body> <body></body><esc>0f>a
    " }}}

    " metadata {{{
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<title> <title></title><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<style> <style></style><esc>0f>a
    " }}}

    " headers {{{
    autocmd FileType html,jsp,markdown iabbrev <buffer> <h1> <h1></h1><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <h2> <h2></h2><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <h3> <h3></h3><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <h4> <h4></h4><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <h5> <h5></h5><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <h6> <h6></h6><esc>0f>a
    " }}}

    " text and formatting {{{
    autocmd FileType html,jsp,markdown iabbrev <buffer> <p> <p></p><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<span> <span></span><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<strong> <strong></strong><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <b> <b></b><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <em> <em></em><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <i> <i></i><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <u> <u></u><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<mark> <mark></mark><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<small> <small></small><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <sub> <sub></sub><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <sup> <sup></sup><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<code> <code></code><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <pre> <pre></pre><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<blockquote> <blockquote></blockquote><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<cite> <cite></cite><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <q> <q></q><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<abbr> <abbr></abbr><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<time> <time></time><esc>0f>a
    " }}}

    " links {{{
    autocmd FileType html,jsp,markdown iabbrev <buffer> <a> <a></a><esc>0f>a
    " }}}

    " lists {{{
    autocmd FileType html,jsp,markdown iabbrev <buffer> <ul> <ul></ul><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <ol> <ol></ol><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <li> <li></li><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <dl> <dl></dl><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <dt> <dt></dt><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <dd> <dd></dd><esc>0f>a
    " }}}

    " Tables {{{
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<table> <table></table><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<thead> <thead></thead><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<tbody> <tbody></tbody><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<tfoot> <tfoot></tfoot><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <tr> <tr></tr><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <th> <th></th><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <td> <td></td><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<caption> <caption></caption><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<colgroup> <colgroup></colgroup><esc>0f>a
    " }}}

    " Forms {{{
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<form> <form></form><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<label> <label></label><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<textarea> <textarea></textarea><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<button> <button></button><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev 
                \<buffer> <select> <select></select><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer>
                \<option> <option></option><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<optgroup> <optgroup></optgroup><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<fieldset> <fieldset></fieldset><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<legend> <legend></legend><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev 
                \<buffer> <datalist> <datalist></datalist><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<output> <output></output><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<meter> <meter></meter><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<progress> <progress></progress><esc>0f>a
    " }}}

    " semantic tags {{{
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<details> <details></details><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<summary> <summary></summary><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<dialog> <dialog></dialog><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<menu> <menu></menu><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> 
                \<menuitem> <menuitem></menuitem><esc>0f>a
    " }}}

    " content grouping {{{
    autocmd FileType html,jsp,markdown iabbrev <buffer> <div> <div></div><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev 
                \<buffer> <main> <main></main><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev 
                \<buffer> <header> <header></header><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev 
                \<buffer> <footer> <footer></footer><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev <buffer> <nav> <nav></nav><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev 
                \<buffer> <section> <section></section><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev 
                \<buffer> <article> <article></article><esc>0f>a
    autocmd FileType html,jsp,markdown iabbrev 
                \<buffer> <aside> <aside></aside><esc>0f>a
    " }}}
augroup END

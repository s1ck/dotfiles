" replace decimal under cursor or the visual selection with a different
" number format (hex, binary, etc.)
function! FuncTheNum(mode)
    if a:mode == 'n'
        let word = expand("<cword>")
        execute "normal! viw\<Esc>"
    elseif a:mode == 'v'
        let save_reg = getreg('a', 1, 1)
        let save_reg_type = getregtype('a')
        execute "normal! \<Esc>gv\"ay"
        call setreg('a', '', 'ac')
        let word = @a
        call setreg('a', save_reg, save_reg_type)
    else
        echoerr "invalid mode (" . a:mode . ")"
    endif

    let hexword = printf("%04X", word)
    let bytword = printf("%02c", word)
    let binword = printf("%08b", word)
    let octword = printf("%o", word)
    let noop = 5
    let opts = {
        \ '1':  ['hex',     hexword],
        \ '2':  ['byte',    bytword],
        \ '3':  ['binary',  binword],
        \ '4':  ['octal',   octword],
        \ noop: ["just don't", word]
        \}
    let input_msg = "Replace with which? Select by inputting \\d<CR>.\n"
    for item in items(opts)
        let selector = item[0]
        let result = join(item[1], ': ')
        let input_msg .= printf("(%s) %s\n", selector, result)
    endfor
    let in = input(input_msg)
    if in !~ '[0-5]'
        throw "invalid input: " . in
    elseif in == noop
        return
    else
        let newword = opts[in][1]
        " for now just replace the fist occurrence of input word
        execute 'substitute/' . word . '/' . newword . '/'
    endif

endfunction

nnoremap <Leader>num :call FuncTheNum('n')<CR>
xnoremap <Leader>num :call FuncTheNum('v')<CR>
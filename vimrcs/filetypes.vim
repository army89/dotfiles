"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Python section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" au FileType python inoremap <buffer> $r return
" au FileType python inoremap <buffer> $i import
" au FileType python inoremap <buffer> $p print
" au FileType python inoremap <buffer> $f # --- <esc>a
" au FileType python map <buffer> <leader>1 /class
" au FileType python map <buffer> <leader>2 /def
" au FileType python map <buffer> <leader>C ?class
" au FileType python map <buffer> <leader>D ?def
" au FileType python set cindent
" au FileType python set cinkeys-=0#
" au FileType python set indentkeys-=0#


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> JSON section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " autocmd FileType json syntax match Comment +\/\/.\+$+
 autocmd FileType json set nowrap
 autocmd FileType jsonc set nowrap
 autocmd FileType json5 set nowrap


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> JavaScript section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" au FileType javascript call JavaScriptFold()
" au FileType javascript setl foldenable
" au FileType javascript setl nocindent
" au FileType javascript setl expandtab shiftwidth=4 tabstop=4

" au FileType javascript imap <c-t> console.log();<esc>hi
" au FileType javascript imap <c-a> alert();<esc>hi

" au FileType javascript inoremap <buffer> $r return
" au FileType javascript inoremap <buffer> $f // --- PH<esc>FP2xi

" function! JavaScriptFold()
"     setl foldmethod=syntax
"     setl foldlevelstart=1
"     syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

"     function! FoldText()
"         return substitute(getline(v:foldstart), '{.*', '{...}', '')
"     endfunction
"     setl foldtext=FoldText()
" endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> CoffeeScript section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CoffeeScriptFold()
    setl foldmethod=indent
    setl foldlevelstart=1
endfunction
" au FileType coffee call CoffeeScriptFold()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> GO
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au FileType go setlocal noexpandtab shiftwidth=4 tabstop=4


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Twig section
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead *.twig set syntax=html filetype=html


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> XML
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup XML
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
    autocmd FileType xml set nofoldenable
    autocmd FileType xml set nowrap
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> SCSS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd FileType scss setl iskeyword+=@-@


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Actionscript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.as set filetype=actionscript

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> Image
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter *.png,*.jpg,*gif exec "! catimg ".expand("%") | :bw


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" -> DockerFile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.dockerfile set filetype=dockerfile


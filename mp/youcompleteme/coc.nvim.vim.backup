if isdirectory(expand(FlyVimBundleDir("coc.nvim")))
    set shell=/bin/zsh

    let g:coc_status_error_sign='✗'
    let g:coc_status_warning_sign='⚠'

    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction
endif

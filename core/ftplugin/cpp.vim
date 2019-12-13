" 防止重复加载
if exists('b:did_cpp_ftplugin')
    finish
endif
let b:did_cpp_ftplugin = 1

" for include
let b:ale_c_parse_makefile = 1

let b:ale_linters = ['cpplint', 'clangtidy']
" let b:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let b:ale_cpp_cpplint_options = '--filter=-legal/copyright --linelength=120 --verbose=5'
let b:ale_cpp_clangtidy_options = '-std=c++17'
let b:ale_cpp_clangtidy_checks = []

let b:ale_fixers = ['clang-format', 'remove_trailing_lines', 'trim_whitespace']
let b:ale_cpp_clangformat_options = '-style=google'
" 如果没有 gcc 只有 clang 时（FreeBSD）
if executable('gcc') == 0 && executable('clang')
    let b:ale_linters.cpp += ['clang']
endif


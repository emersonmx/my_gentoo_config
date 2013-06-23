set ai
set textwidth=80
set smartindent

" Shortcuts
noremap <F5> :!make<CR>
noremap <S-F5> :!make %:r<CR>
noremap <F6> :!./%:r<CR>
noremap <S-F6> :!./%:r<Space>
inoremap <F5> <C-O>:!make<CR>
inoremap <S-F5> <C-O>:!make %:r<CR>
inoremap <F6> :!./%:r<CR>
inoremap <S-F6> :!./%:r<Space>

set include=^\\s*#\\s*include\ \\(<boost/\\)\\@!


" Editor configuration
set ai
set textwidth=80
set smartindent

" Shortcuts
map <F5> :!make<CR>
map <S-F5> :!make %:r<CR>
map <F6> :!./%:r<CR>
map <S-F6> :!./%:r<Space>
imap <F5> <C-O>:!make<CR>
imap <S-F5> <C-O>:!make %:r<CR>
imap <F6> :!./%:r<CR>
imap <S-F6> :!./%:r<Space>

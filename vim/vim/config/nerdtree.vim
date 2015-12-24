" nerdtree vim plugin config
" ~/.vim/config/nerdtree.vim
" Adrian Juszczak
" (https://github.com/juszczak/dotfiles)

" {{{ sort order

let g:NERDTreeSortOrder = [
  \   '\.git/$',
  \   'bower_components',
  \   'node_modules',
  \   '\/$',
  \   '\.ts$',
  \   '\.coffee$',
  \   '\.js$',
  \   '\.json$',
  \   '\.html$',
  \   '\.hbs$',
  \   '\.styl$',
  \   '\.scss$',
  \   '\.less$',
  \   '\.css$',
  \   '*',
  \   '\.md$',
  \   'README',
  \   'LICENSE',
  \ ]

" }}}

" {{{ filetype colors definitions

" *.ts
au FileType nerdtree syn match ts #^\s\+.*tsx\?$#

" *.spec.ts
au FileType nerdtree syn match spects #^\s\+.*spec\.ts$#

" *.styl
au FileType nerdtree syn match styl #^\s\+.*styl$#

" *.js
au FileType nerdtree syn match js #^\s\+.*js$#

" *.coffee
au FileType nerdtree syn match coffee #^\s\+.*coffee$#

" *.json
au FileType nerdtree syn match json #^\s\+.*json$#

" *.hbs
au FileType nerdtree syn match hbs #^\s\+.*hbs$#

" *.html
au FileType nerdtree syn match html #^\s\+.*html$#

" *.css
au FileType nerdtree syn match css #^\s\+.*css$#

" *.less
au FileType nerdtree syn match less #^\s\+.*less$#

" gitconfig, gitignore
au FileType nerdtree syn match gitconf #^\s\+.*git\w\+$#

" *.vim
au FileType nerdtree syn match vim #^\s\+.*vim$#

" *vimrc
au FileType nerdtree syn match vim #^\s\+.*vimrc$#

" *.tmux
au FileType nerdtree syn match tmux #^\s\+.*conf$#

" *.sh
au FileType nerdtree syn match sh #^\s\+.*sh$#

" inputrc
au FileType nerdtree syn match inputrc #^\s\+.*inputrc$#

" bashrc
au FileType nerdtree syn match bash #^\s\+.*bash\w\+$#

" *.md
au FileType nerdtree syn match md #^\s\+.*\(md\|markdown\)$#

" LICENSE
au FileType nerdtree syn match license #^\s\+.*\(LICENSE\|LICENCE\)$#

" node_modules // TODO
au FileType nerdtree syn match node #node_modules\/\s\+#

" }}}

" vim: sw=2 ts=2 foldmethod=marker

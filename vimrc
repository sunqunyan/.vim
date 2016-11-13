" Environment {
    set t_Co=256
" }

" UI {
    set nu
    set cursorline          " Highlight current line
    set cursorcolumn                                
    set linespace=0         " No extra space between rows 
    set wildmenu
" }

" Template {
    autocmd BufNewFile *.html    0r ~/.vim/template/template.html  
    autocmd BufNewFile *.py      0r ~/.vim/template/template.py
    autocmd BufNewFile *.js      0r ~/.vim/template/template.js
" }       

" Formatting {
    set wrap            " Wrap long lines                                    
    set shiftwidth=4    " Use indents of 4 spaces
    set softtabstop=4   " Number of spaces in editing operation
    
    set expandtab       " Use spaces instead of tabs
    set tabstop=4       " Indentation length                           
    set autoindent      " Indent at the same level of the previous line   
    " Remove trailing white spaces and ^M chars
    autocmd FileType c,cpp,java,php,js,twig,python autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
" }

" NerdCommenter {           
"   let NERDSpaceDelims = 1
" }    

" Key Mappings {
    map <C-d> : exec "w" <CR>
    map <C-e> : exec "q" <CR>
    
    map <C-J> <C-W>j
    map <C-K> <C-W>k
    map <C-H> <C-W>h
    map <C-L> <C-W>l
" } 

" { vundle for bundles

    " set nocompatible              " be iMproved, required
    " filetype off                  " required
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin('~/.vim/bundle')
    Plugin 'VundleVim/Vundle.vim'   " let Vundle manage Vundle, required
    "Plugin 'altercation/solarized'  " Color Scheme 
    Plugin 'tomasr/molokai'         " Color Scheme 
    Plugin 'bling/vim-airline'      " UI

    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/syntastic'   " Syntax checking hacks for vim
    Plugin 'scrooloose/nerdcommenter' " Vim plugin for intensely orgasmic commenting


    Plugin 'ervandew/supertab'


"    Plugin 'valloric/youcompleteme' " A code-completion engine for Vim

    Plugin 'kien/ctrlp.vim'         " search file
    Plugin 'tpope/vim-fugitive'     " Git wrapper for vim
    Plugin 'fatih/vim-go'           " Go syntax support
    Plugin 'tobyS/pdv'              " PHP Documentor for VIM
    Plugin 'tobyS/vmustache'


    " {
        " Track the engine.
        Plugin 'SirVer/ultisnips'
        " Snippets are separated from the engine. Add this if you want them:
        Plugin 'honza/vim-snippets'
        " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
        let g:UltiSnipsExpandTrigger="<tab>"
        let g:UltiSnipsJumpForwardTrigger="<c-b>"
        let g:UltiSnipsJumpBackwardTrigger="<c-z>"
        " If you want :UltiSnipsEdit to split your window.
        let g:UltiSnipsEditSplit="vertical"
    " }

    call vundle#end()               " required
    " filetype plugin indent on     " required
" }
" { settings for bundles

    " for nerdtree 
    nmap <silent> <F2> :NERDTreeToggle<CR>    
    
    " for ctrlp
    set laststatus=2    
    
    " for airline
    " let g:airline_section_b = '%{strftime("%x")}'
    " let g:airline_section_y = 'BN: %{bufnr("%")}'
    " let g:airline_powerline_fonts = 1

    " for molokai
    execute "colorscheme molokai"   
    
    " for pdv
    let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
    nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

    " for ultisnips
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>"

    " Supertab {
        let g:SuperTabDefaultCompletionType = "context"
    " }        

" }


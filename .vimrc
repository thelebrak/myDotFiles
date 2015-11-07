" Vim configuaration - Vincent Jousse
" Annule la compatibilite avec l'ancetre Vi : totalement indispensable
set nocompatible

"Activation de pathogen
call pathogen#infect()

" -- Affichage
set title             " Met a jour le titre de votre fenetre ou de votre terminal
set number            " Affiche le numero des lignes
set ruler             " Affiche la position actuelle du curseur
set wrap              " Affiche les lignes trop longues sur plusieurs lignes
set scrolloff=3       " Affiche un minimum de 3 lignes autour du curseur (pour le scroll)

" -- Recherche
set ignorecase        " Ignore la casse lors d'une recherche
set smartcase         " Si une recherche contient une majuscule, reactive la casse
set incsearch         " Surligne les resultats de recherche pendant la saisie
"set hlsearch          " Surligne les resultats de recherche

" -- Beep
set visualbell        " Empeche Vim de beeper
set noerrorbells      " Empeche Vim de beeper

"  -- Tabs and auto-indentation
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"set ts=4              " set tabs to have 4 spaces
"set autoindent        " indent when moving to the next line while writing code
"set expandtab         " expand tab into spaces

"Active le comportement habituel de la touche retour en arriere
set backspace=indent,eol,start

"Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

"Active la coloration syntaxique
syntax enable

"Utilise la version sombre de Solarized
"set background=dark
"colorscheme solarized

"Active les comportements specifiques aux types de fichiers (syntaxe et indentation)
filetype on
filetype plugin on
filetype indent on

"Allow vim to recognize .md file as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

"Police Linux
set guifont=DejaVu\ Sans\ Mono\ 12
set antialias

"Activation de NERDTree au lancement de vim
"autocmd vimenter * NERDTree

"Define <Leader> key (for plugins)
let mapleader = ","

"Allow to split directly with <Leader> key
noremap <leader>v <C-w>v <C-w>w

"Remplacer la touche <Esc> par ;;
:imap ,, <Esc>
:map ,, <Esc>

"Allow to insert just one character with <C-I>
nnoremap <C-I> i <Esc>r

"Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

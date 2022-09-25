set number
set clipboard=unnamed
set tabstop=2
set autoindent
set shiftwidth=2

call plug#begin()

	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
	Plug 'sainnhe/gruvbox-material'

call plug#end()

"" gruvbox
colorscheme gruvbox-material

call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'

if has('nvim')
	  Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
  else
	    Plug 'Shougo/denite.nvim'
	      Plug 'roxma/nvim-yarp'
	        Plug 'roxma/vim-hug-neovim-rpc'
	endif

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'

Plug 'junegunn/fzf'
Plug 'neoclide/coc.nvim'
Plug 'yuki-yano/fzf-preview.vim'

Plug 'romgrk/todoist.nvim'

call plug#end()


" Define mappings
autocmd FileType denite call s:denite_my_settings()
    function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
    \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> d
    \ denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p
    \ denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> q
    \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> i
    \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <Space>
    \ denite#do_map('toggle_select').'j'
endfunction



let g:airline_theme='papercolor'
set t_Co=256
colorscheme PaperColor
set number

let t:is_transparent=1
hi Normal guibg=NONE ctermbg=NONE

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

nmap <F7> :NERDTreeToggle<CR>
nmap <C-P> :FZF<CR>

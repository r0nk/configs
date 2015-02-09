:set t_Co=256
:syntax on
:color maroloccio3
:map \ :w <cr>:!clear<cr> :make<cr>
:map <Tab> :tabn<cr>
:map <BS> :!make run<cr>
noremap <C-d> :!clear <CR> :!echo "Entering bash..."<CR> :!bash<CR><CR>
:set cindent
:set foldmethod=indent
:set foldclose=all
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
noremap   <Up>     :!echo "Entering bash..."<CR> :!bash<CR>
noremap   <Down>   :call HexMe()<CR>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

let $in_hex=0
function HexMe()
	set binary
	set noeol
	if $in_hex>0
	:%!xxd -r
	let $in_hex=0
	else
	:%!xxd
	let $in_hex=1
	endif
	endfunction

set ts=2
set tabstop=2
set sw=2

fun! SetColor()
	hi Normal ctermfg=172
	set cursorline
	hi cursorline cterm=bold ctermbg=233
	hi statusline ctermfg=173
	hi Pmenu ctermfg=grey ctermbg=238
	hi PmenuSel cterm=bold ctermfg=green ctermbg=black
endfun

fun! SetAutoCmd()
	autocmd filetype javascript inoremap cc class{<enter>state={};<enter>render(){<enter>return();<enter>};<enter>}<up><up><up><up><up><right><right><right><right><space>

	autocmd filetype * inoremap ' ''<left>
	autocmd filetype ruby inoremap cc class<enter>attr_accessor<enter>def initialize()<enter>end<enter>end<up><up><up><up><end>
	autocmd filetype ruby inoremap def def<space><enter>end<up><end>
	autocmd filetype runy inoremap if if<enter>end<up><end><space>
	autocmd filetype runy inoremap do<tab> do<enter>end<up><end>
	autocmd filetype ruby inoremap loop loop<space>do<enter>break<space>;<enter>end<up><up><end><enter>
	autocmd filetype ruby inoremap %http require<space>'net/http';
	autocmd filetype * inoremap %c \e[\e[0m<left><left><left><left><left>m<left>
	autocmd filetype * inoremap " ""<left>
	autocmd filetype * inoremap [ []<left>
	autocmd filetype * inoremap { {}<left>
	autocmd filetype * inoremap ( ()<left>
	autocmd filetype javascript inoremap << <></><left><left><left><left>
	autocmd filetype javascript inoremap < <<space>/><left><left><left>
	autocmd filetype javascript inoremap sel this.
	autocmd filetype javascript inoremap fun function(){<enter>};<up><end><left><left><left><space><space><left>
	autocmd filetype * inoremap , ,<space>
	autocmd filetype javascript inoremap imp import<space><space>from<space>'';<home><right><right><right><right><right><right><right>
	autocmd filetype javascript inoremap => =><space>{};<left><left><enter><up><end><enter>
	autocmd filetype javascript inoremap # //<space>
endfun

call SetColor()
call SetAutoCmd()


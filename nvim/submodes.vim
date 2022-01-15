" Add sub-modes to insert mode
let s:modes = 0
let s:isProgramming = 0

function SetJavascriptMode()
	if s:isProgramming == 0
		inoremap čh <Esc>i
		inoremap čj <Esc>ja
		inoremap čk <Esc>ka
		inoremap čl <Esc>la
		inoremap čw <Esc>lwi
		inoremap če <Esc>ea
		inoremap čb <Esc>bi
		inoremap č0 <Esc>^i
		inoremap č4 <Esc>0$a
		inoremap ča ()<Esc>i
        inoremap čs {}<Esc>i
		inoremap čd []<Esc>i
		inoremap čf ;
        inoremap čg :
		inoremap čr =
        inoremap čq =>
		inoremap čt ===
		inoremap ču "
		inoremap či '
		inoremap čo `
        let s:modes = 1
		let s:isProgramming = 1
	else 
        if s:modes == 1
		    iunmap čh
		    iunmap čj
    		iunmap čk
		    iunmap čl
		    iunmap čw
		    iunmap če
		    iunmap čb
		    iunmap č0
		    iunmap č4
		    iunmap ča
		    iunmap čs
		    iunmap čd
		    iunmap čf
            iunmap čg
		    iunmap čr
            iunmap čq
		    iunmap čt
		    iunmap ču
		    iunmap či
		    iunmap čo
	        let s:isProgramming = 0
	    endif
    endif
    return ""
endfunction

inoremap đđ <C-R>=SetJavascriptMode()<CR>

" default mode
call SetJavascriptMode()

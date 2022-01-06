" Add sub-modes to insert mode
let s:isProgramming = 0

function SetProgrammingMode()
	if s:isProgramming==0
		inoremap čh <Esc>hli
		inoremap čj <Esc>jli
		inoremap čk <Esc>kli
		inoremap čl <Esc>lli
		inoremap čw <Esc>lwi
		inoremap če <Esc>ea
		inoremap čb <Esc>bi
		inoremap č0 <Esc>^i
		inoremap č4 <Esc>0$a
		inoremap ča (
		inoremap čs )
		inoremap čd {
		inoremap čf }
		inoremap čr [
		inoremap čt ]
		inoremap ču "
		inoremap či '
		inoremap čo `
		let s:isProgramming = 1
	else
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
		iunmap čr
		iunmap čt
		iunmap ču
		iunmap či
		iunmap čo
	    let s:isProgramming = 0
	endif
    return ""
endfunction

inoremap đđ <C-R>=SetProgrammingMode()<CR>

call SetProgrammingMode()

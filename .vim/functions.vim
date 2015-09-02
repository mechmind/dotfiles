function! SimpleTab()
	let line = getline('.')
    let cursorAt = col('.')

    if cursorAt < 2
        return "\<TAB>"
        return ''
    endif

    let pre = line[:cursorAt]
    if pre =~ '\s$'
        return "\<TAB>"
    endif

    " invoke completion
    if pumvisible()
        return "\<C-N>"
    else
        return "\<C-X>\<C-O>"
    endif

    return ''
endfunction

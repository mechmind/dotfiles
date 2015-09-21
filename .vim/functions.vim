function! SimpleTab()
	let line = getline('.')
    let cursorAt = col('.')

    if cursorAt < 2
        return "\<TAB>"
        return ''
    endif

    if pumvisible()
        return "\<C-N>"
    endif

    let pre = line[:cursorAt-2]
    if pre =~ '\s$'
        return "\<TAB>"
    endif

    " invoke completion
    return "\<C-X>\<C-O>"

    return ''
endfunction

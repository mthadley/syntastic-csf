if exists('g:loaded_syntastic_javascript_csf')
	finish
endif

let g:loaded_syntastic_javascript_csf = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_javascript_csf_IsAvailable() dict
	return executable('check_sf')
endfunction

function! SyntaxCheckers_javascript_csf_GetLocList() dict
	let makeprg = self.makeprgBuild({ 'args': '--no-color' })

	let errorformat = '    Line %l: %m,' .
		\ '    Lines %l-%\d: %m,'

	return SyntasticMake({
		\ 'defaults': {
			\ 'bufnr': bufnr(''),
			\ 'type': 'W'},
		\ 'makeprg': makeprg,
		\ 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
	\ 'filetype': 'javascript',
	\ 'name': 'csf',
	\ 'exec': 'check_sf' })

let &cpo = s:save_cpo
unlet s:save_cpo

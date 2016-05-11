if exists('g:loaded_syntastic_css_csf')
	finish
endif

let g:loaded_syntastic_css_csf = 1

runtime! syntax_checkers/javascript/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
	\ 'filetype': 'css',
	\ 'name': 'csf',
	\ 'redirect': 'javascript/csf' })
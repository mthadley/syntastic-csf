if exists('g:loaded_syntastic_scss_csf')
	finish
endif

let g:loaded_syntastic_scss_csf = 1

runtime! syntax_checkers/javascript/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
	\ 'filetype': 'scss',
	\ 'name': 'csf',
	\ 'redirect': 'javascript/csf' })
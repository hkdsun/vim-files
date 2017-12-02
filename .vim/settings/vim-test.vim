let test#strategy = "vimux"
let g:test#ruby#rails#executable = "dev test"
let g:VimuxOrientation = "h"

augroup ruby_tests
	au!
	au FileType ruby nmap <silent> <leader>co :TestNearest<CR>
	au FileType ruby nmap <silent> <leader>ct :TestFile<CR>

	au FileType ruby nmap <silent> <leader>cm :call VimuxRunLastCommand()<CR>
	au FileType ruby nmap <silent> <leader>cj :call VimuxInterruptRunner()<CR>
	au FileType ruby nmap <silent> <leader>cz :call VimuxZoomRunner()<CR>
	au FileType ruby map <leader>cn :call VimuxPromptCommand()<CR>
augroup END

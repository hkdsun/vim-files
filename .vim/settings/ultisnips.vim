let g:vimwiki_table_mappings = 0

let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetsDir="~/.snips/"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.snips']

let g:ulti_expand_or_jump_res = 0

function! CleverTab()"{{{
    if strpart( getline('.'), 0, col('.')-1 ) !~ '\k' " =~ '^\s*$'
      return "\<TAB>"
    endi

    call UltiSnips#ExpandSnippetOrJump()

    if g:ulti_expand_or_jump_res
        return ""
    else
        if pumvisible()
            return "\<c-n>"
        else
            return neocomplete#start_manual_complete()
        endif
    endif
endfunction"}}}

inoremap <silent> <tab> <c-r>=CleverTab()<cr>

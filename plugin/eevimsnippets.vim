if exists("b:done_eevimsnippets")
   finish
endif
let b:done_eevimsnippets = 1

" Some variables need default value
if !exists("g:snips_author")
    let g:snips_author = "warren"
endif

if !exists("g:snips_email")
    let g:snips_email = "warren.eaton.sciaccaluga@gmail.com"
endif

if !exists("g:snips_github")
    let g:snips_github = "https://github.com/ee7git"
endif

" This will fail if UltiSnips is not installed.
try
   call UltiSnips#bootstrap#Bootstrap()
catch /E117/
   finish
endtry



if !has('python')
    echo "Error: Required vim compiled with +python"
    finish
endif

function! OpenMarkdown()
    let b:md_tick = ""
endfunction

function! UpdateMarkdown()
    if (b:md_tick != b:changedtick)
        let b:md_tick = b:changedtick
python << EOF
import urllib, urllib2, vim, threading
def do():
  try:
    urllib2.urlopen('http://localhost:9999/', data=urllib.urlencode({'md':'\n'.join(vim.current.buffer)})).read()
  except:pass

t = threading.Thread(target=do)
t.daemon=True
t.start()
EOF
    endif
endfunction

" Only README.md is recognized by vim as type markdown. Do this to make ALL .md files markdown
autocmd BufWinEnter *.{md,mkd,mkdn,mdown,mark*} silent setf markdown

autocmd CursorMoved,CursorMovedI,CursorHold,CursorHoldI *.{md,mkd,mkdn,mdown,mark*} silent call UpdateMarkdown()
autocmd BufWinEnter *.{md,mkd,mkdn,mdown,mark*} silent call OpenMarkdown()

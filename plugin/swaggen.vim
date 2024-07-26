function! s:SwagGen()
  let l:lines = [
          \ '// FuncName     FuncDesc',
          \ '// @Summary     Summary',
          \ '// @Description Desc',
          \ '// @Tags        Tags',
          \ '// @Accept      json',
          \ '// @Produce     json',
          \ '// @Param       1Param    header   string  true \"3Pram\"',
          \ '// @Param       2Param    path     integer true \"1Pram\"',
          \ '// @Param       3Param    query    number  true \"2Pram\"',
          \ '// @Param       4Param    query    bool    true \"2Pram\"',
          \ '// @Param       Form      formData integer true \"3Pram\"',
          \ '// @Param       Body      body     Struct  true \"3Pram\"',
          \ '// @Success     200       {object} Object  \"请求成功\"',
          \ '// @Router      Path      [GET]',
          \ ]
  for l:line in l:lines
    silent execute 'put =' . string(l:line)
  endfor

endfunction

augroup swaggen
    autocmd!
    autocmd FileType go
        \ command! -bar -nargs=0 -buffer -range=% SwagGen call s:SwagGen()
augroup end

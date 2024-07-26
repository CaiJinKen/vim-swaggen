function! s:SwagGen()
    let content = '// FuncName     FuncDesc \n'
              \ . '// @Summary     Summary \n'
              \ . '// @Description Desc \n'
              \ . '// @Tags        Tags \n'
              \ . '// @Accept      json\n'
              \ . '// @Produce     json\n'
              \ . '// @Param       1Param     path     string  true "1Pram"\n'
              \ . '// @Param       2Param     path     string  true "2Pram"\n'
              \ . '// @Param       3Param     path     integer true "3Pram"\n'
              \ . '// @Success     200       {object}  Object  "请求成功"\n'
              \ . '// @Router      Path      [GET]\n'

    let cmd = [
            \ '!echo',
            \]
    let cmd = add(cmd,' ' . content)
    execute  '.' .  join(cmd)

endfunction

augroup swaggen
    autocmd!
    autocmd FileType go
        \ command! -bar -nargs=0 -buffer -range=% SwagGen call s:SwagGen()
augroup end

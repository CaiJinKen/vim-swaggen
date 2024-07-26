# vim-swaggen

vim/neo-vim plugin for generate swaggo api doc template in current line

## Installation

Now add the plugin to vim with plugin manager.

I use [vim-plug](https://github.com/junegunn/vim-plug) and in that you can add using

```vim
Plug 'CaiJinKen/vim-swaggen'
```

and run `:PlugInstall`

## Usage

Use `:SwagGen` by calling it in normal mode
eg:
We have a go file like this:

```go
package handler

func Something(){
  // logic here
}
```

Then move cursor to line 2 (under the package line), and execute `:SwagGen` and the file changes like this:

```go
package handler

// FuncName     FuncDesc
// @Summary     Summary
// @Description Desc
// @Tags        Tags
// @Accept      json
// @Produce     json
// @Param       1Param    header   string  true "3Pram"
// @Param       2Param    path     integer true "1Pram"
// @Param       3Param    query    number  true "2Pram"
// @Param       4Param    query    bool    true "2Pram"
// @Param       Form      formData integer true "3Pram"
// @Param       Body      body     Struct  true "3Pram"
// @Success     200       {object} Object  "请求成功"
// @Router      Path      [GET]
func Something() {
  // logic here
}
```

And we can find the placeholder easily by motion, and relace them to what you want.

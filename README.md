Qualificação IME-USP (UTF-8)
============================

Arquivo LaTeX de exemplo de dissertação/tese a ser apresentados à CPG do IME-USP
--------------------------------------------------------------------------------

Fork de [luizsantos/qualificacaoIMEUSP](https://github.com/luizsantos/qualificacaoIMEUSP) utilizando a codificação ``UTF-8`` ao invés da ``latin1``, corrigindo diversos problemas que ocorreram durante a conversão dos arquivos. Graças a isso, é possível misturar caracteres de outras linguagens e usar editores LaTeX online como o [ShareLaTeX](https://www.sharelatex.com?r=e48f5c1b&rm=d&rs=b).

Comece editando os arquivos ``variaveis.tex`` e ``configuracoes.tex`` para que ele sirva para seus propósitos. Existem vários exemplos disponíveis na pasta ``capitulos``, que deve servir como base para seu texto. Para compilar, certifique-se que os pacotes ``texlive-full`` (Debian, Ubuntu), ``texlive-most`` (Arch Linux) ou o equivalente na sua distribuição estejam instalados, e execute o ``Makefile`` incluso com o seguinte comando:

    $ make

Se ainda assim o aluno achar necessário, é possível converter esses arquivos de volta para ``latin1``, é possível com o uso do script ``change_encoding.sh``, usando o seguinte comando num terminal Unix:

    $ scripts/change_encoding.sh utf8 latin1

Porém isso não foi testado e *não é recomendável*.

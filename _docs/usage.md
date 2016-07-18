---
layout: docs
title: Uso Básico
permalink: /docs/usage/
---

O Jekyll possui uma palavra reservada `jekyll` que pode ser executada na sua janela
de terminal. Você pode utilizar esse comando de diversas formas:

{% highlight bash %}
$ jekyll build
# => A pasta atual será criada no ./_site

$ jekyll build --destination <destino>
# => A pasta atual será criada no <destino>

$ jekyll build --source <origem> --destination <destino>
# => A pasta de <origem> será criada no <destino>

$ jekyll build --watch
# => A pasta atual será criada no ./_site,
#    sendo observada para alterações, e publicada automaticamente.
{% endhighlight %}

<div class="note info">
  <h5>Mudanças no _config.yml não são alteradas durante a publicação automática.</h5>
  <p>
    O arquivo de configuração <code>_config.yml</code>contém informações globais e definições de variáveis 
    que são apenas lidas uma única vez em tempo de execução. Mudanças feitas no <code>_config.yml</code>
    durante o publicação automaticamente não são carregadas até a próxima execução
  </p>
  <p>
    Perceba que os <a href="../datafiles">arquivos de dados</a> estão incluídos e são carregados durante a publicação automaticamente.
  </p>
</div>

<div class="note warning">
  <h5>As pastas de destino são limpas no processo de construção do site</h5>
  <p>
    O conteúdo <code>&lt;destino&gt;</code> é automaticamente limpo,
    por padrão, quando o site é construído. Arquivos e pastas que são foram
    criados durante o processo de construção do site serão removidos. Arquivos e pastas
    que você deseja manter no <code>&lt;destino&gt;</code> devem ser espeficados dentro de <code>&lt;keep_files&gt;</code>
    no diretório de configuração.
  </p>
  <p>
    Não utilize locais importantes para o <code>&lt;destino&gt;</code>;
    ao invés disso, utilize um local de teste e copie os arquivos de lá para o seu servido web.
  </p>
</div>

Jekyll também possui um servidor de desenvolvimento próprio que te permite
visualizar aquilo que foi gerado no seu site através do browser localmente

{% highlight bash %}
$ jekyll serve ou jekyll s
# => O servidor de desenvolvimento se encontra em http://localhost:4000/
# Auto-publicação: enabled. Digite `--no-watch` caso queira desabilitar esta opção.

$ jekyll serve --detach
# => O mesmo que `jekyll serve` porém sairá do escopo do terminal.
#    Se você precisa matar o servidor, digite `kill -9 1234` onde "1234" é o PID.
#    Se você não consegue encontrar o PID, então digite, `ps aux | grep jekyll` e mate a instância. [Leia mais](http://unixhelp.ed.ac.uk/shell/jobz5.html).
{% endhighlight %}

<div class="note info">
  <h5>Esteja atento ao comportamento padrão</h5>
  <p>
    A partir da versão 2.4, o comando <code>serve</code> irá observar automaticamente as mudanças feitas. Para desabilitar
    esta opção, utilize o comando <code>jekyll serve --no-watch</code>, para manter o comportamento antigo.
  </p>
</div>

{% highlight bash %}
$ jekyll serve --no-watch
# => Assim como `jekyll serve` mas não irá mais observar as alterações.
{% endhighlight %}

Estas são algumas das [opções de configuração](../configuration/).
Muitas dessas opções podem ser especificar através dos comandos no terminal,
ou de forma alternativa (e mais comum) podem ser espeficadas através do arquivo`_config.yml`
no diretório raiz. O Jekyll autoticamente usa essas opções através deste arquivo quando é
executado. Por exemplo, se você colocar essas linhas no seu arquivo `_config.yml`:

{% highlight yaml %}
source:      _source
destination: _deploy
{% endhighlight %}

Estes dois comandos são equivalentes a esses:

{% highlight bash %}
$ jekyll build
$ jekyll build --source _source --destination _deploy
{% endhighlight %}

Para mais informações sobre outras possíveis opções de configuração, veja na página
[configuração](../configuration/).

Se você ficou interessado em saber mais, execute o comando
`jekyll-docs` e logo depois `jekyll docs` no seu terminal.
---
layout: docs
title: Instalação
permalink: /docs/installation/
---

Ter o Jekyll instalado e pronto para uso leva apenas alguns minutos. Se você está encontrando
algum dificuldade, por favor [abra um tópico]({{ site.repository }}/issues/new) (ou envie um pull request) descrevendo o problema que você encontrou e como podemos tornar o processo mais simples.

### Requerimentos

Instalar o Jekyll é fácil e direto, mas há alguns requerimentos que você irá precisar para
seu sistema antes de começar.

- [Ruby](http://www.ruby-lang.org/en/downloads/) (incluindo development
  headers, v1.9.3 ou acima para Jekyll 2 e v2 ou acima para Jekyll 3)
- [RubyGems](http://rubygems.org/pages/download)
- Linux, Unix, ou Mac OS X
- [NodeJS](http://nodejs.org), ou outra plataforma JavaScript (Jekyll 2 e
versões mais recentes, para o suporte do CoffeeScript).
- [Python 2.7](https://www.python.org/downloads/) (para Jekyll 2 e versões mais recentes)

<div class="note info">
  <h5>Rodando Jekyll no Windows</h5>
  <p>
    Embora que o Windows não seja oficialmente suportado, é possível conseguir rodá-lo. Instruções especiais podem ser encontradas na
    <a href="../windows/#installation">página de instalação no Windows</a>.
  </p>
</div>

## Instalando com RubyGems

A melhor maneira de instalar o Jekyll é através d
[RubyGems](http://rubygems.org/pages/download). No terminal, simples execute o seguinte comando para instalá-lo:

{% highlight bash %}
$ gem install jekyll
{% endhighlight %}

Todas as dependências gem do Jekyll são automaticamente instaladas através deste comando, 
então você não precisa se preocupar com eles. Se você está com problemas ao instalá-lo, veja a 
página de [solução de problemas](../troubleshooting/) ou [reporte o problema]({{ site.repository }}/issues/new)
para que a comunidade Jekyll possa melhorar a experência para todos.


<div class="note info">
  <h5>Instalando a ferramenta de comando de linha Xcode</h5>
  <p>
    Se você está tendo problema na instalação das dependências do Jekyll que 
    fazem o uso de extensões nativas e está utilizado o Mac OS X, você deverá 
    instalar o Xcode e a sua ferramente de comando de linha que vem junto. Baixe através de
    <code>Preferences &#8594; Downloads &#8594; Components</code>.
  </p>
</div>

## Pré-lançamentos

A fim de instalar um pré-lançamento, tenha a certeza de já possuir todos os
requerimentos instalados corretamente e executar o seguinte comando:

{% highlight bash %}
gem install jekyll --pre
{% endhighlight %}

Isto será instalado a última versão de pré-lançamento. Se você deseja uma versão
mais específica, use o `-v` para indicar a versão que deseja instalar:

{% highlight bash %}
gem install jekyll -v '2.0.0.alpha.1'
{% endhighlight %}


Se você quer instalar uma versão de desenvolvimento do Jekyll, o processo é um pouco
mais trabalhoso. Isto lhe dá a vantagem de ter a última e maior versão, mas pode ser
instável.

{% highlight bash %}
$ git clone git://github.com/jekyll/jekyll.git
$ cd jekyll
$ script/bootstrap
$ bundle exec rake build
$ ls pkg/*.gem | head -n 1 | xargs gem install -l
{% endhighlight %}

## Extras opcionais

Há algumas funcionalidades extras opcionais que o Jekyll possui que possa 
lhe interessar, dependendo de como você irá utilizá-lo. Estes extras incluem
o suporte ao LaTeX, e algumas alternativas em relação aos renderizadores de 
conteúdo.
Verifique [a página extras](../extras/) para mais informações.

<div class="note">
  <h5>ProDicas™: Habilite a sintaxe de marcação</h5>
  <p>
    Já que você está utilizando o Jekyll, então é possível que você queira
    habilitar a sintaxe de marcação usando o <a href="http://pygments.org/">Pygments</a>
    ou até mesmo o <a href="https://github.com/jayferd/rouge">Rouge</a>. Você realmente deveria
    <a href="../templates/#code-snippet-highlighting">dar uma olhada de como
    fazer isso</a> antes de ir mais pra frente.
  </p>
</div>

Agora que está tudo instalado, mãos à massa!
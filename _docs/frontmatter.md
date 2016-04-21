---
layout: docs
title: Front Matter
permalink: /docs/frontmatter/
---
O front matter é onde o jekyll começa a ficar realmente legal. Qualquer arquivo contendo um bloco [YAML](http://yaml.org/) front matter vai ser processado pelo jekyll como um arquivo especial. O front matter deve ser a primeira coisa no arquivo e deve assumir a forma de YAML válido colocado entre as linhas tracejadas. Aqui esta um exemplo básico.

{% highlight yaml %}
---
layout: post
title: Blogging Like a Hacker
---
{% endhighlight %}

Entre essas linhas tracejadas, você pode colocar variáveis predefinidas(veja abaixo para uma referencia) ou mesmo criar uma própria. Estas variáveis vão em seguida estar disponiveis para o acesso usando as tags do Liguid tanto mais para baixo no arquivo e também em qualquer layouts ou includes que a página ou o post em questão invoca.

<div class="note warning">
  <h5>UTF-8 Codificação de caracteres de aviso</h5>
  <p>
    Se você usar codificação UTF-8, certifique-se de que não existem caracteres<code>BOM</code> no cabeçalho de seus arquivos ou coisas muito, muito ruins vão acontecer no jekyll. Isto é especialmente relevante se você estiver rodando <a href="../windows/">Jekyll no Windows</a>.
  </p>
</div>

<div class="note">
  <h5>ProTip™: Variáveis são opcionais no Front Matter</h5>
  <p>
    Se você deseja usar <a href="../variables/">tags Liquid e variáveis</a>
    mas não precisa de nada no seu front matter, só deixe vázio! O conjunto de linhas tracejadas sem conteúdo entre elas ainda terá o Jekyll para processar o arquivo. (Isto é muito util para coisas como CSS e feeds RSS!)
  </p>
</div>

## Variáveis ​​globais predefinidas

Existe um número de variáveis ​​globais predefinidas que você pode colocar no seu front matter de um página ou de um post.

<div class="mobile-side-scroller">
<table>
  <thead>
    <tr>
      <th>Variável</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        <p><code>layout</code></p>
      </td>
      <td>
        <p>

          Se definido, especifica o layout do arquivo para usar. Use o nome do layout do arquivo sem sua extenção. Layout de arquivos devem ser colocados no diretório <code>_layouts</code>.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>permalink</code></p>
      </td>
      <td>
        <p>

          Se você precisa que sua URL do post seja diferente do padrão de todo site (<code>/year/month/day/title.html</code>), então você pode definir uma variável e vai ser usado como URL final.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>published</code></p>
      </td>
      <td>
        <p>
          Defina como false se você não quer que um post especifico seja gerado.
        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p style="margin-bottom: 5px;"><code>category</code></p>
        <p><code>categories</code></p>
      </td>
      <td>
        <p>

          Ao invés de colocar post dentro de pastas, você pode especificar uma ou mais categorias que o post pertence. Quando o site é gerado o post vai agir como se tivesse sido definido com essas categorias normalmente. Categories (chave plural) pode ser especificado com uma <a href="http://en.wikipedia.org/wiki/YAML#Lists">lista YAML</a> ou uma String separada por virgula.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>tags</code></p>
      </td>
      <td>
        <p>

          Similar a categories, uma ou multiplas tags podem ser adicionadas a um post, também como categories, tags podem ser especificadas como uma lista YAML ou uma String separada por virgula.

        </p>
      </td>
    </tr>
  </tbody>
</table>
</div>

## Variáveis personalizadas.

Qualquer variavel no front matter que não é predefinida é misturada nos dados que esta sendo enviado para o Liguid templating engine durante a conversação. Por exemplo, se você definir um titulo, você pode usa-lo em seu layout para definir o titulo da página:

{% highlight html %}
<!DOCTYPE HTML>
<html>
  <head>
    <title>{% raw %}{{ page.title }}{% endraw %}</title>
  </head>
  <body>
    ...
{% endhighlight %}

## Variáveis predefinidas para posts

Estas informações estão disponiveis para ser usada no front matter de um post

<div class="mobile-side-scroller">
<table>
  <thead>
    <tr>
      <th>Variável</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        <p><code>date</code></p>
      </td>
      <td>
        <p>
          
          A data aqui substitui a data do nome do post. Isto pode ser usado para garantir a ordenação correta dos posts. A data é especificada no formato <code>YYYY-MM-DD HH:MM:SS +/-TTTT</code>; horas, minutos, secundos, e deslocamento de fuso horário são opcionais.
        </p>
      </td>
    </tr>
  </tbody>
</table>
</div>

<div class="note">
  <h5>ProTip™: Não se repita</h5>
  <p>
    
    Se você não quer repetir as suas variáveis do front matter usados com freqüência de novo e de novo, basta definir <a href="../configuration/#front-matter-defaults" title="Front Matter defaults">padrões</a> para eles e só substitui-los sempre que necessário (ou não em todos). Isso funciona para as variáveis predefinidos e personalizados.
  </p>
</div>

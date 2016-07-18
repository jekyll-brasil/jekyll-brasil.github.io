---
layout: docs
title: Estrutura de Diretório
permalink: /docs/structure/
---

Jekyll é, na sua essência, uma engine para transformar o seu texto. O contexto
por trás do sistema é: você escreve na sua linguagem favorita de markup, podendo ser
Markdown, Textile, ou HTML puro, e isso se junta em um layout ou uma série de layouts.
Ao longo desse processo, você pode ajustar como as URLs do site irão ser exibidas, qual
conteúdo será mostrado no layout, e mais. Isto tudo é feito através da edição desses
arquivos de texto, e o site estático é o produto final.

Um site básico construído com Jekyll, tem uma estrutura parecida com essa:

{% highlight bash %}
.
├── _config.yml
├── _drafts
|   ├── colocando-ideias-malucas-em-pratica.textile
|   └── a-simplicidade-da-technologia.markdown
├── _includes
|   ├── footer.html
|   └── header.html
├── _layouts
|   ├── default.html
|   └── post.html
├── _posts
|   ├── 2015-10-29-jekyll-e-maravilhoso.textile
|   └── 2016-04-26-sendo-um-magico-com-jekyll.textile
├── _data
|   └── members.yml
├── _site
├── .jekyll-metadata
└── index.html
{% endhighlight %}

Agora mostrando uma visão geral do que cada um desses faz:

<div class="mobile-side-scroller">
<table>
  <thead>
    <tr>
      <th>Arquivo / Diretório</th>
      <th>Descrição</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        <p><code>_config.yml</code></p>
      </td>
      <td>
        <p>

          Armazena as <a href="../configuration/">configurações</a> de dados.Muitas dessas
          opções podem ser especificadas através da linha de comando porém é mais 
          fácil fazer assim então assim você não tem a obrigação de lembrá-los.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>_drafts</code></p>
      </td>
      <td>
        <p>

          Drafts são posts não publicados. O formato desses arquivos é sem a data: 
          <code>title.MARKUP</code>. Aprenda como <a href="../drafts/">
          trabalhar com drafts</a>.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>_includes</code></p>
      </td>
      <td>
        <p>

          Podem ser utilizados em layouts e posts para facilitar o
          reuso. A tag <code>{% raw %}{% include file.ext %}{% endraw %}</code>
          é usada para incluir o arquivo que está em
          <code>_includes/file.ext</code>.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>_layouts</code></p>
      </td>
      <td>
        <p>

          São templates para os posts. Os layouts são escolhidos post por
          post baseado no <a href="../frontmatter/">YAML Front Matter</a>,
          que é descrito na seção. A tag <code>{% raw %}{{ content }}{% endraw %}</code>
          é usada para injetar conteúdo na página.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>_posts</code></p>
      </td>
      <td>
        <p>

          É o seu conteúdo dinâmico, basicamente falando. A convenção de nome 
          desses arquivos é importante, e você deve seguir este formato:
          <code>ANO-MÊS-DIA-título.MARKUP</code>.
          Os <a href="../permalinks/">permalinks</a> podem ser customizados para
          cada post, mas a data e linguagem de markup são determinadas apenas
          no nome do arquivo.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>_data</code></p>
      </td>
      <td>
        <p>

          Todo o conteúdo de dados deve ser colocado aqui. A engine do Jekyll
          irá carregar todos esses arquivos YAML neste diretório (usando ou
          <code>.yml</code>, <code>.yaml</code>, <code>.json</code> ou
          <code>.csv</code> ) e serão acessados através de `site.data`.
          Se possuir o arquivo <code>members.yml</code> abaixo desse diretório, 
          então você pode acessar o conteúdo desse arquivo através de <code>site.data.members</code>.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>_site</code></p>
      </td>
      <td>
        <p>

          É aqui onde o site gerado (por padrão) uma vez que o Jekyll está pronto
          para transformá-lo. Provavelmente é uma boa ideia adicionar isso no seu 
          arquivo <code>.gitignore</code>.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>.jekyll-metadata</code></p>
      </td>
      <td>
        <p>

          Este aqui te ajuda a manter o controle de quais arquivos precisam ou 
          não serem modificados na última construção do site. Este arquivo não 
          será incluído no site em si. E é uma boa ideia adicionar isso 
          ao <code>.gitignore</code> também.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p><code>index.html</code> e outros arquivos HTML, Markdown, Textile</p>
      </td>
      <td>
        <p>

          Desde que o arquivo possua o <a href="../frontmatter/">YAML Front
          Matter</a>, ele será transformado pelo Jekyll. O mesmo acontece
          com qualquer outro arquivo no formato <code>.html</code>, <code>.markdown</code>,
          <code>.md</code>, ou <code>.textile</code> que está no diretório raiz do seu site
          ou em outros diretórios não listados acima.

        </p>
      </td>
    </tr>
    <tr>
      <td>
        <p>Outros arquivos/pastas</p>
      </td>
      <td>
        <p>

          Qualquer outro diretório e arquivo exceto esses listados acima como
          as pastas <code>css</code> e <code>images</code>, e os arquivos
          <code>favicon.ico</code>, e assim por diante serão copiados para
          o site gerado. Já existem muitos <a href="../sites/">sites
          que estão utilizando o Jekyll</a> caso você esteja curioso para ver
          como estão funcionando.

        </p>
      </td>
    </tr>
  </tbody>
</table>
</div>

---
layout: docs
title: Trabalhando com drafts
permalink: /docs/drafts/
---

Drafts são postagens sem data. Eles são postagens que você ainda está trabalhando e ainda 
não quer publicar. Para começar a usar drafts, crie uma pasta `_drafts`
no diretório raiz de seu site (como descrito na seção [estrutura do site](/docs/structure/))
e crie seu primeiro draft:

{% highlight text %}
|-- _drafts/
|   |-- a-draft-post.md
{% endhighlight %}

Para visualizar seu site com drafts, simplesmente execute `jekyll serve` ou
`jekyll build` com a opção `--drafts`. Para cada draft, o valor da data de
modificação será alterado para a data atual, e então você verá os drafts editados
neste momento como postagens recentes.

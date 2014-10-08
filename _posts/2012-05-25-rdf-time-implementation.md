---
 layout: post
 title: RDF, time, implementation
---

Continuing to investigate about RDF as model framework for future works, it is no surprise to see that triple model include some textbook metaphysic problems : time and parts. I think I will put philosophical considerations for later and dive directly into formalisation problem. If you are interested by the philosophical part, Peter Simons' [Parts](http://books.google.fr/books/about/Parts.html?id=vX7t7n9Mk_wC&redir_esc=y) and Roderick Chisolm's [Person and Object](http://books.google.fr/books?id=2x2I93Ui9i4C&dq=person+and+object&hl=fr&source=gbs_navlinks_s) should be good starts.

### time

There have been some investivation about [temporal RDF graph](http://www.dcc.uchile.cl/~cgutierr/papers/) by [Gutierrez](http://www.dcc.uchile.cl/~cgutierr/). The formalism (s p[t] o) he proposed could certainly be converted into a non temporal graph where relations keep a temporal property.

	mary is-married-with[1999-2008] john

could be translated to :

	mary is-part-of marriage-marry-john
	marriage-marry-john validity 1999-2008

The obvious fact is that it multiply quiet quickly the complexity of declarations and queries. But it also give a better understanding of objects where parts come in and out more than one time.

### implementation

Anyway the problem is that temporal graph are not part of the current RDF specification draft nor SPARQL specification draft. One solution could be to switch to graph model where relationships also have properties (eg. [Neo4j](http://neo4j.org)). But in a some way, I think I'll now stick to RDF and SPARQL because of W3C and keep it simple's spirit.

I still have not chose or really tested triplestore solutions. I am thinking of a combination of [MongoDB](http://www.mongodb.org/) and [rdfstore-js](https://github.com/antoniogarrote/rdfstore-js).

## influence network of philosophers

![](/assets/article_images/2012-05-25-rdf-time-implementation/philosophers1.png)

Here is a quiet brute output of the produced non-temporal graph rendered in gephi. Here is a [A0 pdf version](/assets/article_images/2012-05-25-rdf-time-implementation/philosophers1.pdf) of this visualization with label. Big nodes are the usual suspects (Kant, Hegel, Spinoza, Plato, etc.). It is mainly for eyecandiness purpose. We all agree this is far from informative as viz and conforts me in my position about social network visualization.
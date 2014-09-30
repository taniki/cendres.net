---
 layout: post
 title: "the challenge of importing RDF into neo4j"
---

After some considerations, I wanted to give a try to store dbpedia extracts into neo4j but then problems emerge.

[Neo4j](http://neo4j.org/) seems to be a top-tier graph database, mainly written for java environnement but there is an embed python bindings and in last case a REST interface. As told in the [previous article](/2012/05/25/rdf-time-implementation/), the model as some extra-features than won't feat with an orthodox RDF graph model but then it opens rooms for some extra logic.

Trying to keep a python environnement, I mainly got the [same problems that this guy](http://rogueleaderr.tumblr.com/post/14464258963/using-neo4j-graph-database-and-python-to-work-with-rdf) :

- The python bindings are not very easy to install.
- The REST interface is usefull but quiet slow. Handy but mostly helpless when it comes to import big graphs. Most libraries like [bulbflow](http://bulbflow.com/) lie upon the REST interface.

I then started to write a slow and dirty python script that open RDF files and store them in neo4j. But stopped quickly because of more structural problems. I'm also not very sure about keeping possible performance issues even if they will be deal locally and not in the user space.

## RDF Logic vs Neo4j ##

The main problems concerning the RDF format is that I didn't find a way to keep information about variables. For example :

	"Jacques Lacan"@en
	"Jacques Emile Lacan"@en
	"Jacques Lacan"@fr
	"Jacques Émile Lacan"@fr

Will likely be difficult to convert into a property because properties don't have properties in neo4j syntax. You also don't necessarily convert everything into nodes. Possible solution will be to use the possibility for property values to be array of primitives (but brings the further problem of separation of value that are litterals or URI).

The same goes for format information like :

	"1905-02-02"^^<http://www.w3.org/2001/XMLSchema#date>

This problem could be avoid and store the information as it is and let the future deal with the problem.

Altough the distinction between URIs and URL stored in litterals can be skipped by using relationships. The bad point is that you can have objects with properties and relationships having the same information but not the same form because of the object.

	<http://cendres.net/ontologies>
	"<http://cendres.net/ontologies>"
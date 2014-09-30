---
 layout: post
 title: "sparql and computationnal sociology - 1"
---

Yesterday saw my first steps in SPARQL. Not necessarly an very pleasant experience, it seems promising anyway. Don't look at this post as a tutorial into SPARQL and the reality of semantic web but more as a journey log.

Then certainly in a vague moment of procrastination coupled with the spirit of maximalism, someone proposed to use wikipedia to produce a full automatically constructed graph of influence of philosophers among others. Quiet quickly, we went about [dbpedia](http://dbpedia.org) to skip the scrapping part. The aim of dbpedia is to provided a semantic version of wikipedia.

That is said, it provided a [very handy API](http://dbpedia.org/sparql) and way to query a "network of knowledge"

Here is the last SPARQL query we produced to get a minimal graph of relations between philosophers.

	PREFIX dbo: <http://dbpedia.org/ontology/>
	
	select distinct ?person ?influenced ?influencedBy
	where { 
	    ?person
	        rdf:type dbo:Philosopher ;
	        foaf:name ?nameperson .
	    {
	      OPTIONAL {
	        ?person
	          dbpedia-owl:influenced ?influenced .

	        ?influenced rdf:type dbo:Philosopher .
	      }
	    }
	    UNION
	    {
	      OPTIONAL {
	        ?person
	          dbpedia-owl:influencedBy ?influencedBy .

	        ?influencedBy rdf:type dbo:Philosopher .
	      }
	    }
	}
	
	ORDER BY ?person

There is obviously some lacks due to wikipedia categorization *eg.* Sigmund Freud is certainly a major influence in history of philosophical thougths but does not appear because is not tagged as a philosopher.

### first returns of experience ###

- The dataset provided has some weird bugs or the query is wrong. For example, Jacques Lacan has a some influenced links on the [web rendering](http://dbpedia.org/resource/Jacques_Lacan) but less when we do a [direct query](http://dbpedia.org/sparql?default-graph-uri=http%3A%2F%2Fdbpedia.org&query=PREFIX+dbo%3A+%3Chttp%3A%2F%2Fdbpedia.org%2Fontology%2F%3E%0D%0A%0D%0Aselect+distinct+%3Fperson+%3Finfluenced%0D%0Awhere+%7B+%0D%0A++++%3Fperson%0D%0A++++++++rdf%3Atype+dbo%3APhilosopher+%3B%0D%0A++++++++foaf%3Aname+%22Jacques+Lacan%22%40en+.%0D%0A%0D%0A++++++OPTIONAL+%7B%0D%0A++++++++%3Fperson%0D%0A++++++++++dbpedia-owl%3Ainfluenced+%3Finfluenced+.%0D%0A%0D%0A++++++++%3Finfluenced+rdf%3Atype+dbo%3APhilosopher+.%0D%0A++++++%7D%0D%0A%7D%0D%0A%0D%0AORDER+BY+%3Fperson&format=text%2Fhtml&timeout=0&debug=on). (Don't worry, I am not switching views about lacanian psychoanalysis, I just found weird that the [first result](http://dbpedia.org/resource/%C3%89lisabeth_Roudinesco) does not show up more influences)
- Some differences with the "reality" or common sense are certainly due to [dbpedia's extraction process](http://wiki.dbpedia.org/Documentation?v=6hz).
- It is certainly possible to use formal ontology to provide less gnostic categorization. Specially about what is a philosopher or not.
- Speaking of which, I have never been very confortable with the way computer scientist and semantic web people use the word "ontology". There is still a place for experimental and metaphysical thinking.
- One should also have space to think about what is formalization there.
- It is a definitively a good way to start learning (and applying) semantic web technologies. You can build pretty complex queries but syntax do not seems very complicated.
- There is a good opportunities to build a game website providing problems the algorithms encounter. Technical collective intelligence feedback if you want.

More experiences soon. Visualization (the candy part) just began (:
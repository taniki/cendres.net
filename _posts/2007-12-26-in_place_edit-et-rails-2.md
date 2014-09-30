---
 layout: post
 title: "in_place_edit et rails 2"
---

Pour ceux qui se demandent pourquoi <code>in_place_edit_for</code> renvoie une petite erreur depuis le passage à une installation ruby on rails 2.0, la solution est toute simple : C'est devenu un <a hreflang="en" href="http://wiki.rubyonrails.org/rails/pages/Plugins">plugin</a> et c'est aussi le moment où jamais de regarder les deux trois commandes associées qui vont vous simplifier la vie.

En deux lignes, donc, voilà comment installer un plugin :
<pre>$ script/plugin discover
$ script/plugin install in_place_editing</pre>
C'EST TOUT et s'il y a besoin d'autre chose, il faut noter l'existence de <a hreflang="en" href="http://rapt.rubyforge.org/">rapt</a>.

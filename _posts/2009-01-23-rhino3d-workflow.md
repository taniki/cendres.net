---
 layout: post
 title: "Rhino3D workflow"
---

En commençant quelques projets incluant de la programmation 3D, j'aurai préféré utiliser un logiciel libre comme "Blender":http://blender.org ou bien développer à partir de 0 avec "openframeworks+opengl":http://openframeworks.cc mais certains choix obéissent autant à des contraintes sociales et pratiques. Pour le coup, programmer pour "rhino":http://rhino3d.com est la solution la plus simple pour collaborer : pas besoin de demander à quelqu'un d'apprendre un nouveau logiciel (qui a bien des avantages quand on travaille sur des mesures), pas besoin de se préoccuper de la couche de rendu et en même temps pas besoin de développer toute la partie Interface-Homme-Machine.

Cool, il n'y a alors qu'à se concentrer sur le script.

Modulo le langage de base sur lequel repose Rhinoscript : VISUAL BASIC. C'est incroyable, j'ai rencontré deux fois cette chose au cours de ma carrière, lorsque je voulais apprendre la programmation et lors de mes études. Depuis j'en ai vu d'autres quoi et, promis, plus jamais je cracherai sur du code PHP qui me semblera moche techniquement et esthétiquement. Combien de générations ont abandonné tout espoirt de comprendre quelques choses aux langages informatiques après avoir été confronté à ce bric-à-brac invraisemblable de logique ?

Cela étant dit, voici les petits plus qui font de Rhino un environnement confortable pour travailler en 3d :

* "Monkey Editor":http://en.wiki.mcneel.com/default.aspx/McNeel/MonkeyForRhino4.html : Le logiciel a installer pour remplacer l'affreux éditeur de base de rhino
* "BoxEdit":http://en.wiki.mcneel.com/default.aspx/McNeel/LabsBoxEdit.html : Pour avoir un accès paramétrique aux différentes propriétés des objets 3D
* "Rhinoscript 101":http://en.wiki.mcneel.com/default.aspx/McNeel/RhinoScript101 : Une base pour apprendre correctement le langage et la logique vectorielle/modification de mesh
* "Le wiki McNeel":http://en.wiki.mcneel.com/default.aspx/McNeel/RhinoScript.html : Pour ses ressources et exemples didactiques.
* "Rhinoscript.org":http://www.rhinoscript.org/ : un repository de scripts opensource

<a href="http://cendres.net/images/2009/01/render2.jpg"><img src="http://cendres.net/images/2009/01/render2.jpg" alt="render2" title="render2" /></a>

h4. Grasshoper

"Grasshopper":http://grasshopper.rhino3d.com peut être une vraie fausse bonne idée. L'outils est intéressant pour qui maîtrise déjà la logique vectorielle et des transformations 3d et voudrait faire des transformations un peu complexe de forme (une sorte de batch sans passer par le code). Il existe "une mailing-list particulièrement active":http://groups.google.com/group/grasshopper3d (ce qui n'a pas l'air d'être le cas pour rhinoscript) et pas mal de sites intéressants proposant des tutoriaux pour cette technique de "Design Reform":http://designreform.net à "Youtube":http://www.youtube.com/results?search_type=&search_query=rhino+grasshopper. Par contre la technique se retrouve assez vite limité dès qu'il s'agit de faire des choses un peu complexe et du dynamique. Tout ce qui est faisable en rhinoscript est certainement convertible en un schéma grasshopper mais la gymnastique intellectuelle requise n'équivaut certainement pas la souplesse offerte par un langage de programmation aussi pourri soit il.

* Grasshopper = facilité + clareté/complexité + visuel
* Rhinoscript = rapidité + clareté*complexité + souplesse

+N.B. :+ Pour ceux qui ont un mac, je recommande l'installation de bootcamp pour utiliser toute la suite rhino et ses amis. Auparavant, je m'étais escrimer pendant assez longtemps à l'utiliser avec Parallels mais il faut reconnaître que l'accumulation de raccourcis clavier et la réactivité réduite fait que toute tâche prend des tournures parfois démentes ; comme coder en VB donc imaginez les deux additionnés. Si quelqu'un s'en est mieux sorti ou a une recette magique, je suis preneur d'un compte-rendu.

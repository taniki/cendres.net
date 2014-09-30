---
 layout: post
 title: Walter et Théodor sont dans un bateau
---

Il y a un petit passe-temps débile que j'entretiens depuis quelques temps : collectionner des citations. Je suis loin d'être le premier wanabee-intello à jouer à ce petit jeu. Ca va de pair avec juste acheter des livres juste pour le fun.

Parmi les solutions que j'ai tenté :

* Des cahiers. Pleins. Que je commence avec un système de marges, de tags "à la main", des systèmes de soulignement avec des couleurs (c'est fou comme on est créatif dans une bibliothèque et sans internet). Que j'abandonne au bout de 20-30 pages. Qui parfois se transforment en carnets de notes. Que je ne relis jamais.
* Juste souligner dans les livres. HAHA. Parfois je mets aussi des petits marque-pages. Ca sert à rien à part m'angoisser quand je déménage et que les livres se retrouvent dans des cartons et que les marque-pages sont tordus et que ça va les ruiner à vie.
* Un wiki. Ca se passait dans un dossier de ce site. Comme tous les web machins, je me suis lassé ou bien j'ai essayé un nouveau truc puis j'ai oublié.
* Yojimbo et Evernote. J'ai payé une licence pour le premier avant le grand boom des cloudtrucs. J'ai apprécié l'interface des deux logiciels mais il y avait un petit quelque chose qui me dérangeait pour la collection de citation. Peut être le fait de les mélanger avec un tas d'autres choses et aussi de savoir que les données étaient enfermées dans un système fermé.

Ca me prend beaucoup de temps et je voudrais en avoir plus pour faire des choses qui pourraient être plus intéressantes que cette sorte de mind crack. Une seule solution : action.

Donc il y a quelques semaines, j'ai décidé de me la jouer old school. Dans un certain dossier "Carnet", j'ai un nouveau dossier "Quotes" contenant un petit tas de fichiers texte. tout simple. Je peux les éditer avec n'importe quoi.

Du coup, je me disais que ça serait aussi intéressant de [partager tout ça avec l'internet](http://fragments.cendres.net). C'est un début, j'ai récupéré quelques trucs qui provenaient de mon ordi et aussi un peu pour tester le système. Il y a un peu de tout, des trucs genre inspirationnels à des restes d'études systématiques comme ma période Goodman. Ca me fait également une bonne occasion de relire 7 ans de prélèvements complètement chaotiques.

![](http://farm6.static.flickr.com/5180/5397706165_77f2a17582_z.jpg)

Puis comme je suis un peu maso, j'ai décidé de tout faire en open source (old school gars). Les sources sont cracra mais suffisament stables pour avoir de quoi naviguer correctement et commencer à jouer avec la feuille de styles.

Le système se divise en trois :

* [des citations](http://github.com/taniki/quotes) (my preciouuuuusss) nettoyées dont les données biblio sont stockées au format YAML et suivant la structure bibTex
* [walter][] est la partie serveur sous forme d'une petite librairie ruby
* [theodor][] est un modèle de mise en forme minimaliste. "L'architecture" est intentionnelle segmentée pour que les personnes souhaitant faire uniquement de la CSS puisse le faire sans se soucier de faire du ruby

En parlant d'"architecture", le fonctionnement ressemble beaucoup à celui de [toto][] car elle m'a beaucoup plus et je m'en suis donc sans honte et sans reproche.

Tout le processus passe par des petits serveurs [git][]. Je pourrais faire un petit article sur le sujet mais ça serait juste assumer pour de vrai tout ce temps que je perds à être un geek.

Cela m'a également permis de publier officiellement mon [premier ruby gem](https://rubygems.org/gems/walter). Le processus est très simple et impresionnant d'accessibilité.

Il y a encore beaucoup à faire et à apprendre pour amener tout ça à un niveau respectable. J'avoue aussi que ça fait partie d'un projet machiavélique world wide web qui devrait intéresser à peu près 10 personnes maximum.

[walter]: http://github.com/taniki/walter
[theodor]: http://github.com/taniki/theodor
[toto]: http://cloudhead.io/toto
[git]: http://git-scm.com
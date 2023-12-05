
------------------------------------------------------------------------

# INF3500 - labo 6
# Équipe *nom-d-equipe-ici*
# Noms et prénoms des coéquipiers: *vos-noms-et-prenoms-ici*

------------------------------------------------------------------------

## Partie 1 : Nouvelles instructions et programme en assembleur

Notes et observations ...

Parties 1B et 1C : fichiers modifiés [PolyRISC_v10c.vhd](sources/PolyRISC_v10c.vhd) et [PolyRISC_utilitaires_pkg.vhd](sources/PolyRISC_utilitaires_pkg.vhd).

(Remettre une seule version des fichiers pour les parties 1B et 1C.)

Partie 1D : fichier modifié [PolyRISC_le_programme_pkg.vhd](sources/PolyRISC_le_programme_pkg.vhd) utilisant vos nouvelles instructions.

Le cas échéant, votre banc d'essai modifié [PolyRISC_v10_tb.vhd](sources/PolyRISC_v10_tb.vhd).

## Partie 2 : Implémentation sur la planchette

**Faire un choix et garder seulement une option.**

Nous utilisons la carte Basys 3.

Nous utilisons la carte Nexys A7-50T.

Nous utilisons la carte Nexys A7-100T.

Voici un lien vers notre fichier de configuration final : [top_labo_6.bit](synthese-implementation/top_labo_6.bit)

## Partie 3 : Ressources pour implémenter le processeur PolyRISC

Voici le nombre de ressources disponibles dans notre FPGA.

Slice LUTs | Slice Registers | F7 Muxes | F8 Muxes | Bonded IOB
---------- | --------------- | -------- | -------- | ----------
20800 | 41600 | 16300 | 8150 | 106

Voici le nombre de ressources utilisées par le PolyRISC selon les valeurs demandées dans les instructions du labo.

Nreg | Wd | Mi | Md | version du processeur | Slice LUTs | Slice Registers | F7 Muxes | F8 Muxes | Bonded IOB
---- | -- | -- | -- | --------------------- | ---------- | --------------- | -------- | -------- | ------------
16   | 32 | 8  | 8  | version de base       | 292    | 197         | 0  | 0  | 68
16   | 64 | 8  | 8  | version de base       | 555    | 389        | 0  | 0  | 132
32   | 32 | 8  | 8  | version de base       | 290    | 197        | 0  | 0  | 68
32   | 64 | 8  | 8  | version de base       | 555    | 389         | 0  | 0  | 132
16   | 32 | 8  | 8  | version partie 1      | 489   | 262         | 96  | 32  | 68
16   | 64 | 8  | 8  | version partie 1      | 1073    | 518         | 164  | 64  | 132
32   | 32 | 8  | 8  | version partie 1      | 605    | 262         | 64  | 32  | 68
32   | 64 | 8  | 8  | version partie 1      | 1213   | 518        | 138  | 64  | 132

Commentez complètement vos résultats ici.

On remarque que pour les versions où Wd est à la valeur 64, la synthèse demande plus de Bonded IOB que ce que la carte peut offrir. Il est donc impossible d'implémenter ce circuit en une seule FPGA Basys3.

... 


## Partie 4 : Bonus

*Faire un choix et garder seulement une option.*
- Nous n'avons pas complété le bonus. Nous nous concentrons sur notre réussite dans ce cours et dans d'autres.
- Nous sommes vraiment en avance dans nos études, dans ce cours et tous les autres, et nous adorons les défis dans ce cours, donc nous avons complété une ou plusieurs parties du bonus.

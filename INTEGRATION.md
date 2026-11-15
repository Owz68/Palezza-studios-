# Palezza Studios — intégration des packs (v2)

## Ajouté (rien de supprimé ni remplacé)
- Section `#collection` « Collection Palezza » (index.html) : 1000 icônes, 300 concepts de logos (filtres région/secteur), 100 illustrations (filtre catégorie), 50 motifs, 12 animations SVG, 100 vidéos MP4, 8 modèles PSD, 4 polices TTF (DejaVu).
- Recherche, filtres, « Afficher plus » (60 par page), fiche détail (format, dimensions, accès, licence, source), téléchargement SVG/PNG/MP4/PSD/TTF, SVG recoloré (icônes), favoris et historique (stockés sur l'appareil, localStorage).
- Fichiers : `assets/library/` (+ `catalog.json`, dossier `licenses/` avec les notices des deux packs et le catalogue des sources).
- Liens d'accès : pied de page et ligne « Essayez » du hero. La recherche de l'en-tête alimente aussi la collection.

## Non touché
config.js, supabase/001_*.sql, authentification, projets, Iconify/Openverse/Commons/Pixabay, outils, effets, offres, logos officiels.

## Non intégré volontairement (à valider avec vous)
- Photos et logos officiels de marques : dossiers vides dans le pack ; les marques restent servies par Simple Icons/Iconify (onglet Bibliothèque).
- Accès réservé aux membres / Premium, quotas, liens signés, tableau de bord admin : exigent un backend (tables, stockage privé, règles serveur). Proposé en phase 2 (migration `002_*.sql`).

## Mise à jour (14 nov. 2026)
- Supprimés : les onglets et fichiers factices « Concepts de logos », « Illustrations » et « Motifs » (formes génériques sans valeur).
- Ajouté : onglet « Logos de marques » (3 470 logos Simple Icons v16.37.0, CC0) dans `assets/library/brands/`, avec couleur de marque, SVG recolorable, PNG 512 px, favoris et historique. Licence et avertissement sur les marques dans `assets/library/licenses/`.
- Photos : Unsplash (clé dans `config.js`), Openverse en secours. Bibliothèque : Pixabay (clé dans `config.js`).
- Refonte mobile : bibliothèque unifiée (`#biblio`) avec une seule barre d'onglets qui défile (Logos, Icônes, Photos, Vecteurs, Illustrations, Vidéos, Polices, PSD, Modèles, Packs), grilles 3 colonnes (logos, icônes) et 2 colonnes (photos, vidéos), chargement automatique en fin de liste, fiches qui s'ouvrent depuis le bas de l'écran, menu du haut masqué sur téléphone (barre du bas conservée).
- Illustrations : nouvel onglet « Illustrations » (89 images) : 20 scènes originales Palezza Studios, 33 Open Doodles (CC0), 36 figures et scènes Humaaans (CC BY 4.0, mention obligatoire). Couleur d'accent recolorable, export SVG et PNG. Les illustrations unDraw ne sont pas incluses (licence interdisant les bibliothèques). Voir assets/library/licenses/ILLUSTRATIONS_NOTES.txt.

## Mise à jour (15 nov. 2026) — Bibliothèque d'illustrations
- Ajouté : 1 680 illustrations SVG (800 × 600, ~6 Ko chacune) dans `assets/library/illustrations/bibliotheque/`, classées en 8 domaines (Sport, Informatique, Technologie, Agriculture, Éducation, Cuisine, Santé, Business & finance), 210 par domaine. L'onglet « Illustrations » compte désormais 1 769 images.
- Catalogue : entrées ajoutées à `assets/library/catalog.json` (jeu « Bibliothèque Palezza », catégorie = domaine, couleur d'accent #6C63FF recolorable, mots-clés de recherche en 6e colonne).
- `index.html` : seule modification, la recherche des illustrations prend en compte les mots-clés (`o.tags`).
- Licence : illustrations originales générées par programme pour Palezza Studios, usage libre y compris commercial ; revente en pack interdite.
- PNG des illustrations : le bouton « Télécharger PNG » applique maintenant la couleur d'accent choisie (comme « SVG couleur choisie ») ; le nom du fichier porte le code couleur si elle a changé. Sortie 1 600 px, générée dans le navigateur.

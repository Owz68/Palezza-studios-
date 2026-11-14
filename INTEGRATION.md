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

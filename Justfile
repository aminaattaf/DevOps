default: hello

hello:
    @echo "Hello, World!"

# creer repository
init-repo url:
    git init
    # on le lie
    -git remote add origin {{url}}
    git branch -M main
    # on recupère les fichiers (- pour que just ignore l'erreur c'est à dire si le serveur est vide)
    -git pull origin main --allow-unrelated-histories
    # on ajoute les ficheirs
    git add .
    # on effecture un premier commit (- pour éviter erreur))
    -git commit -m "Premier commit"
    # on push tout    
    git push -u origin main

# synchroniser repo
sync:
    git pull
    git push

# Variante si vous voulez préciser une branche spécifique (par défaut "main")
sync-branche branch="main":
    git pull origin {{branch}}
    git push origin {{branch}}

pull :
    git pull

push:
    git push

merge branch_name:
    git merge {{branch_name}}

branche branch_name:
    git checkout -b {{branch_name}}

switch branch_name:
    git switch {{branch_name}}

init:
    git init

status:
    git status

# modifier ficher I don't know 
modifier-fichier nom_fichier +texte:
    echo "{{texte}}" > {{nom_fichier}}

add:
    git add .

commit text:
    git commit -m "{{text}}"

log:
    git log --oneline --graph --decorate

# ancienne version
#clean:
#    @echo "" > tmp.txt

# version sans erreur
clean:
    @true > tmp.txt


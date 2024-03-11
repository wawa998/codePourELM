# Installation Conteneur EML
## Instalation du conteneur 
`docker build -t my-elm-image .`

## Initialisation du compilateur
`docker run --rm -v /chemin/vers/votre/projet:/code my-elm-image elm init`


## Compilation 

`docker run --rm -v "%cd%:/code" -w /code my-elm-image elm make Main.elm --output=elm.js`

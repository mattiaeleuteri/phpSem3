<?php

if(isset($_GET['liste'])) {
    echo "Vous voulez obtenir la liste des ressources";
}

if(isset($_GET['id'])) {
    echo "Vous voulez obtenir la ressource ayant l'identifiant {$_GET['id']}";
}


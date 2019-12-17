<?php

$bdd = new mysqli('localhost', 'root', 'root', 'BasesCC');
if ($bdd->connect_error) {
    die("impossible de se connecter");
}

switch ($_SERVER['REQUEST_METHOD']) {
    case 'GET':
        if (isset($_GET['id'])) {
            afficherConseiller($_GET['id']);
        } else {
            afficherListe();
        }
        break;
    case 'POST':
        ajouterConseiller();
        break;
    case 'DELETE':
        supprimerConseiller($_GET['id']);
        break;
}


function afficherListe()
{
    global $bdd;
    $rec = $bdd->query('select * from conseiller');
    $res = array();
    while ($row = $rec->fetch_object()) {
        $res[] = $row;
    }
    echo (json_encode($res));
}

function afficherConseiller($id)
{
    global $bdd;
    $rec = $bdd->query("select * from conseiller where id={$id}");
    $res = array();
    while ($row = $rec->fetch_object()) {
        $res[] = $row;
    }
    echo (json_encode($res));
}

function ajouterConseiller()
{
    exit;
}

function supprimerConseiller($id)
{
    exit;
}

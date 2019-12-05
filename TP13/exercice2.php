<?php

$bdd = new mysqli('localhost', 'root', 'root', 'BasesCC');
if ($bdd->connect_error) {
    die("impossible de se connecter");
}

if (isset($_GET['liste'])) {
    global $bdd;
    $rec = $bdd->query('select * from conseiller');
    $res = array();
    while ($row = $rec->fetch_object()) {
        $res[] = $row;
    }
    echo (json_encode($res));
}

if (isset($_GET['id'])) {
    global $bdd;
    $rec = $bdd->query("select * from conseiller where id={$_GET['id']}");
    $res = array();
    while ($row = $rec->fetch_object()) {
        $res[] = $row;
    }
    echo (json_encode($res));
}

<?php

$bdd = new mysqli('localhost', 'root', 'root', 'PHPSem3');
if ($bdd->connect_error) {
    die("impossible de se connecter");
}

$sql = "SELECT * from npa WHERE npa_localite LIKE '{$_GET['critere']}%'";
$rec = $bdd->query($sql) or die($bdd->error);

while($row = $rec->fetch_object()){
    echo "$row->npa_code $row->npa_localite<br/>";
}
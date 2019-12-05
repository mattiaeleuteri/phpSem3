<?php
if (!isset($_POST['rechercher'])) {
    ?>
    <form method="post">
        <input type="text" name="nom" value="">
        <input type="radio" name="format" value="json"> JSON
        <input type="radio" name="format" value="xml1"> XML 1
        <input type="radio" name="format" value="xml2"> XML 2
        <input type="radio" name="format" value="csv"> CSV
        <button type="submit" name="rechercher">Rechercher</button>
    </form>
<?php
    exit();
}
$bdd = new mysqli('localhost', 'root', '', 'boursedeparis');
if ($bdd->connect_error) die("connexion impossible");
$bdd->set_charset('utf-8');

$sql = "select * from bourseparis limit 0, 200";
$rec = $bdd->query($sql) or die($bdd->error);

if (!isset($_POST['format'])) {
    echo ("erreur format...");
    exit();
}
switch ($_POST['format']) {
    case 'json':
        json($rec);
        break;
    case 'csv':
        csv($rec);
        break;
    case 'xml1':
        xml1($rec);
        break;
    case 'xml2':
        xml2($rec);
        break;
}

function csv($rec)
{
    header("content-type: application/csv");
    header("content-disposition: attachement; filename=actions.csv");
    echo ("Id;Nom;Valeur\n");
    while ($row = $rec->fetch_object()) {
        echo ("$row->Id;$row->Action;$row->Valeur\n");
    }
}
function xml1($rec)
{
    header('Content-type: text/xml; charset=UTF-8');
    echo ("<actions>");
    while ($row = $rec->fetch_object()) {
        echo ("<action id=\"$row->Id\">");
        echo ("<nom>" . utf8_encode($row->Action) . "</nom>");
        echo ("<valeur>$row->Valeur</valeur>");
        echo ("</action>");
    }
    echo ("</actions>");
}

function xml2($rec)
{
    header('Content-type: text/xml; charset=UTF-8');
    $xml = new XMLWriter();
    $xml->openMemory();
    $xml->startDocument('1.0', 'UTF-8');
    $xml->startElement('actions');
    while ($row = $rec->fetch_object()) {
        $xml->startElement('action');
        $xml->writeAttribute('id', $row->Id);
        $xml->writeElement('nom', 'aaa');
        $xml->writeElement('valeur', $row->Valeur);
        $xml->endElement();
    }
    $xml->endElement();
    $xml->endDocument();
    echo $xml->outputMemory(TRUE);
}

function json($rec)
{
    $res = array();
    while ($row = $rec->fetch_object()) {
        $res[] = $row;
    }
    echo (json_encode($res));
}
// $resultatObj = (object) array();
// $resultatObj->statut = true;
// $resultatObj->liste = $res;
// echo(json_encode($resultatObj));
// $resultat =array();
// $resultat['statut'] = true;
// $resultat['liste'] = $res;
// echo(json_encode($resultat));

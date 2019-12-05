<?php


$bdd = new mysqli('localhost', 'root', 'root', 'BasesCC');
if ($bdd->connect_error) die("Connexion impossible");

if ($_POST['recherche'] == 'client') {
    global $bdd;

    $sql = "select * from client where ";

    if (isset($_POST['nom'])) {
        $sql = $sql . "`nom` like '" . $_POST["nom"] . "%' ";
    }
    if (isset($_POST['pays'])) {
        if (isset($_POST['nom'])) {
            $sql = $sql . "and ";
        }
        $sql = $sql . "`pays` like '" . $_POST["pays"] . "%' ";
    }
    $page = isset($_POST['page']) ? $_POST['page'] : 1;
    if ($_POST['page'] == '') {
        $page = 1;
    }
    $limit = "LIMIT " . ($page - 1) * 20 . ", 20";

    $sql = $sql . $limit;
    $res = $bdd->query($sql);
    if (isset($_POST['format'])) {
        if ($_POST["format"] == "pdf") {
            require('../fpdf181/fpdf.php');
            $pdf = new FPDF();
            $pdf->AddPage();
            $pdf->SetFont('Arial', '', 10);
            $pdf->cell(4, 7, "Nom", 1);
            $pdf->cell(4, 7, "Prénom", 1);
            $pdf->cell(4, 7, "Pays", 1);
            $pdf->cell(4, 7, "NPA", 1, 1);
            while ($client = $res->fetch_object()) {
                //cell(largeur,hauteur,txt,bord,ln,)
                $pdf->cell(4, 7, $client->nom, 1);
                $pdf->cell(4, 7, $client->prenom, 1);
                $pdf->cell(15, 7, $client->pays, 1);
                $pdf->cell(15, 7, $client->npa, 1, 1);
            }
            $pdf->Output();
        }
        if ($_POST["format"] == "csv") {
            header("content-type: application/csv");
            header("content-disposition: attachement; filename=voitures.csv");
            while ($client = $res->fetch_object()) {
                echo ($client->id . ";" . $client->nom . ";" . $client->prenom . ";" . $client->email . ";" . $client->pays . ";" . $client->npa . "\n");
            }
        }
        if ($_POST["format"] == "xml") {
            header('Content-type: text/xml; charset=UTF-8');
            echo ("<clients>");
            while ($client = $res->fetch_object()) {
                echo ("<client>");
                echo ("<nom>" . $client->nom . "</nom><prenom>" . $client->prenom . "</prenom><email>" . $client->email . "</email><pays>" . $client->pays . "</pays><npa>" . $client->npa . "</npa>");
                echo ("</client>");
            }
            echo ("</clients>");
        } else {
            while ($client = $res->fetch_object()) {
                echo ("<ul>");
                echo ("<li>" . $client->id . " - " . $client->nom . " - " . $client->prenom . "-" . $client->email . "-" . $client->pays . "-" . $client->npa . " </li>");
                echo ("</ul>");
            }
        }
    } else {
        while ($client = $res->fetch_object()) {
            echo ("<ul>");
            echo ("<li>" . $client->id . " - " . $client->nom . " - " . $client->prenom . "-" . $client->email . "-" . $client->pays . "-" . $client->npa . " </li>");
            echo ("</ul>");
        }
    }
} else {
    global $bdd;

    $sql = "select * from conseiller where ";

    if (isset($_POST['nom'])) {
        $sql = $sql . "`nom` like '" . $_POST["nom"] . "%' ";
    }

    $rec = $bdd->query($sql);
    $res = array();
    while ($row = $rec->fetch_object()) {
        $rec_client = $bdd->query("select * from client where `conseiller_id` = " . $row->id);
        $row->clients = array();
        while ($row_client = $rec_client->fetch_object()) {
            $row->clients[] = $row_client;
        }
        $res[] = $row;
    }
    echo (json_encode($res));
}

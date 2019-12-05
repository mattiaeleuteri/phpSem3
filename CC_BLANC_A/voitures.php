<?php
define('BDD_HOST', 'localhost');
define('BDD_USER', 'root');
define('BDD_PASS', '');
define('BDD_NAME', 'basescc');

$bdd =new mysqli(BDD_HOST, BDD_USER, BDD_PASS, BDD_NAME);
if ($bdd->connect_error) die("Connexion impossible");

function recherche(){
  global $bdd;
  $sql = "Select * from voitures where ";
  if($_GET["marque"] != ""){
    $sql = $sql." `marque` like '".$_GET["marque"]."%' or `modele` like '".$_GET["marque"]."%' ";
  }
  if($_GET["annee"] != ""){
    $sql = $sql."and annee = ".$_GET["annee"]." ";
  }else if(isset($_GET["anciens"])){
    $sql = $sql."and annee < 2010 ";
  }
  if($_GET["impot"] != ""){
    $sql = $sql."and impot <= ".$_GET["impot"]." ";
  }
  if($_GET["assurance"] != ""){
    $sql = $sql."and assurance <= ".$_GET["assurance"]." ";
  }
  if(isset($_GET["typeRecherche"])){
    if($_GET["typeRecherche"] == "modele"){
      $sql = $sql."order by modele";
    }else if($_GET["typeRecherche"]=="annee"){
      $sql = $sql."order by annee";
    }else{
      $sql = $sql."order by assurance and impot";
    }
  }else{
    $sql = $sql."order by marque and modele";
  }
  $resultats = $bdd->query($sql);
  return $resultats;
}

function afficherFormulaire(){
  echo("<!DOCTYPE html>
  <html>
    <head>
      <meta charset=\"utf-8\">
      <title>Voitures</title>
    </head>
    <body>
      <form action=\"\" method=\"get\">
        <fieldset>
          <input type=\"text\" name=\"marque\" placeholder=\"marque ou modèle\">
          <input type=\"text\" name=\"annee\" placeholder=\"année\">
          <label for=\"anciens\">Uniquement pour les modèles anciens</label> <input type=\"checkbox\" name=\"anciens\" value=\"\">
          <label for=\"impot\">Impôts max :</label><input type=\"number\" name=\"impot\" value=\"\">
          <label for=\"assurance\">Assurance max :</label><input type=\"number\" name=\"assurance\" value=\"\">
          <label for=\"rmodele\">Modèle</label><input type=\"radio\" name=\"typeRecherche\" value=\"modele\">
          <label for=\"rannee\">Année</label><input type=\"radio\" name=\"typeRecherche\" value=\"annee\">
          <label for=\"rcout\">Cout</label><input type=\"radio\" name=\"typeRecherche\" value=\"cout\">
          <select class=\"\" name=\"format\">
            <option value=\"html\">HTML</option>
            <option value=\"pdf\">PDF</option>
          </select>
          <input type=\"submit\" name=\"btnRech\" value=\"Rechercher\">
        </fieldset>
      </form>
    </body>
  </html>");
}
function afficherHtml($voitures){
  while($voiture = $voitures->fetch_object()){
    echo("<ul>");
    echo("<li>".$voiture->marque." - ".$voiture->modele." - ".$voiture->annee."-".$voiture->nombre."-".$voiture->impot."-".$voiture->assurance." </li>");
    echo("</ul>");
  }
}
function afficherPdf($voitures){
  require('../fpdf181/fpdf.php');
  $pdf = new FPDF();
  $pdf->AddPage();
  $pdf->SetFont('Arial','',10);
  $pdf->cell(15,7,"Marque",1);
  $pdf->cell(40,7,"Modele",1);
  $pdf->cell(15,7,"Année",1);
  $pdf->cell(15,7,"Coût",1,1);
  while($voiture = $voitures->fetch_object()){
    //cell(largeur,hauteur,txt,bord,ln,)
    $pdf->cell(15,7,$voiture->marque,1);
    $pdf->cell(40,7,$voiture->modele,1);
    $pdf->cell(15,7,$voiture->annee,1);
    $pdf->cell(15,7,$voiture->assurance+$voiture->impot,1,1);
  }
  $pdf->Output();
}

function afficherJson($voitures){
  $liste = array();
  while($voiture = $voitures->fetch_object()){
    $uneVoiture["marque"] = $voiture->marque;
    $uneVoiture["modele"] = utf8_encode($voiture->modele);
    $uneVoiture["annee"] = $voiture->annee;
    $uneVoiture["cout"] = $voiture->impot+$voiture->assurance;
    array_push($liste,$uneVoiture);
  }
  var_dump($liste);
}
function afficherCsv($voitures){
  header("content-type: application/csv");
  header("content-disposition: attachement; filename=voitures.csv");
  while($voiture = $voitures->fetch_object()){
    echo($voiture->id.";".$voiture->marque.";".$voiture->modele.";".$voiture->annee.";".$voiture->nombre.";".$voiture->impot.";".$voiture->assurance."\n");
  }
}
function afficherXml($voitures){
  header('Content-type: text/xml; charset=UTF-8');
  echo("<voitures>");
  while($voiture = $voitures->fetch_object()){
    echo("<voiture>");
    echo("<id>".$voiture->id."</id><marque>".$voiture->marque."</marque><modele>".$voiture->modele."</modele>");
    echo("</voiture>");
  }
  echo("</voitures>");
}


if(isset($_GET["btnRech"]) && ($_GET["format"]!="pdf") && ($_GET["format"]!="csv") && ($_GET["format"]!="xml") && ($_GET["format"]!="json")|| !isset($_GET["btnRech"])){
  afficherFormulaire();
}

if(isset($_GET["btnRech"])){
  $voitures = recherche();
  if($_GET["format"]=="html"){
    afficherHtml($voitures);
  }else if($_GET["format"]=="pdf"){
    afficherPdf($voitures);
  }else if($_GET["format"]=="csv"){
    afficherCsv($voitures);
  }else if($_GET["format"]=="json"){
    afficherJson($voitures);
  }else if($_GET["format"]=="xml"){
    afficherXml($voitures);
  }
}



 ?>
<h1>Test 1</h1>
<?php

echo "Texte venant de php <br>";

$nom = "Dupont";
$tel = "022 300 30 30";

echo "Nom: $nom, tel: $tel <br>";

$var = "nom";
echo $$var, "<br>";
exemple();

function exemple() {
    global $nom, $tel;
    echo "Nom: $nom, tel: $tel <br>";
}
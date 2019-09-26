<meta charset="utf-8" />
<h1>Exercice 1</h1>

<?php

echo "<h2>a)</h2>";
for($i=1; $i<=20; $i++) {
    echo $i, "<br>";
}

echo "<h2>b)</h2>";
function afficherDebutFin($debut, $fin) {
    for($i=$debut; $i<=$fin; $i++){
        echo $i, "<br>";
    }
}
echo afficherDebutFin(4, 10);

echo "<h2>c)</h2>";
function afficherDebutFinIncr($debut, $fin, $incr=1) {
    for($i=$debut; $i<=$fin; $i += $incr){
        echo $i, "<br>";
    }
}
echo afficherDebutFinIncr(4, 10);
echo "<br>";
echo afficherDebutFinIncr(4, 10, 2);

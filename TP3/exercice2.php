<form>
    <input type="text" name="montant">
    <select name="liste">
        <option value="USD">USD</option>
        <option value="EUR">EUR</option>
        <option value="JPY">JPY</option>
    </select><br/>
    <input type="submit" name="submit" value="Convertir">
</form>

<?php
if (isset($_GET['submit'])) {
    echo "Le montant {$_GET['montant']} CHF donne ";
    if ($_GET['liste'] == 'USD') {
        $montantFinal = $_GET['montant'] * 1;
        echo "$montantFinal {$_GET['liste']}";
    }
    elseif ($_GET['liste'] == 'EUR') {
        $montantFinal = $_GET['montant'] * 0.91;
        echo "$montantFinal {$_GET['liste']}";
    }
    elseif ($_GET['liste'] == 'JPY') {
        $montantFinal = $_GET['montant'] * 107;
        echo "$montantFinal {$_GET['liste']}";
    }
}
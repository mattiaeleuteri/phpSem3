<form>
    <input type="text" name="nb1">
    <input type="text" name="nb2">
    </br>   
    <input type="submit" value="+" name="plus">
    <input type="submit" value="-" name="moins">
    <input type="submit" value="*" name="fois">
    <input type="submit" value="/" name="diviser">
    <input type="submit" value="Effacer" name="effacer">
</form>
<?php
if (isset($_GET['plus'])) {
    echo $_GET['nb1'] + $_GET['nb2'];
}
if (isset($_GET['moins'])) {
    echo $_GET['nb1'] - $_GET['nb2'];
}
if (isset($_GET['fois'])) {
    echo $_GET['nb1'] * $_GET['nb2'];
}
if (isset($_GET['diviser'])) {
    echo $_GET['nb1'] / $_GET['nb2'];
}
if (isset($_GET['effacer'])) {
    $_GET['nb1'] = null;
    $_GET['nb2'] = null;
}
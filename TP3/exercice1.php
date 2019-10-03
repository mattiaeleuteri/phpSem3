<form>
    <input type="text" name="texte"><br/>
    <input type="radio" name="radio" value="1">1
    <input type="radio" name="radio" value="2">2<br/>
    <input type="checkbox" name="checkbox" value="check">check?
    <select name="liste">
        <option value="option1">option1</option>
        <option value="option2">option2</option>
        <option value="option3">option3</option>
        <option value="option4">option4</option>
    </select><br/>
    <input type="submit">
</form>


<?php

foreach ($_GET as $cle=>$valeur){
    echo "$cle : $valeur <br/>";
}
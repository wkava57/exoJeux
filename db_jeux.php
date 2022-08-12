<?php

try {
    $db = new PDO(
        'mysql:host=localhost;dbname=ifpa_exo1;charset=utf8',
        'root',
        ''
    );

    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch(PDOException $e) {
    die($e->getMessage());
}
<?php



include('conexionarchivo.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $description = $con->real_escape_string(htmlentities($_POST['description']));

    $file_name = $_FILES['file']['name'];

    $new_name_file = null;

    if ($file_name != '' || $file_name != null) {
        $file_type = $_FILES['file']['type'];
        list($type, $extension) = explode('/', $file_type);
        if ($extension == 'pdf') {
            $dir = 'files/';
            if (!file_exists($dir)) {
                mkdir($dir, 0777, true);
            }
            $file_tmp_name = $_FILES['file']['tmp_name'];
            
            $new_name_file = $dir . file_name($file_name) . '.' . $extension;
            if (copy($file_tmp_name, $new_name_file)) {
                
            }
        }
    }

    $ins = $con->query("INSERT INTO files(description,url) VALUES ('$description','$new_name_file')");

    if ($ins) {
        echo '...:::  REPORTE DE ASISTENCIA REGISTRADO  ...:::';
    } else {
        echo '...:::  HA OCURRIDO UN ERROR, VERIFIQUE  ...:::';
    }
} else {
    echo '...:::  HA OCURRIDO UN ERROR, VERIFIQUE  ...:::';
}

?>
<?php
session_start();

function BuscarVuelos($conn, $origen, $destino, $tipo_ruta, $fecha)
{
    $sql = "SELECT * FROM vuelos 
            WHERE origen LIKE ? 
            AND destino LIKE ? 
            AND tipo = ? 
            AND fecha_vuelo = ?";

    $stmt = mysqli_prepare($conn, $sql);

    // Para permitir búsquedas parciales
    $origen = "%$origen%";
    $destino = "%$destino%";

    mysqli_stmt_bind_param($stmt, "ssis", $origen, $destino, $tipo_ruta, $fecha);
    mysqli_stmt_execute($stmt);
    $res = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($res) > 0) {
        // Guardar todos los vuelos encontrados en una sesión
        $_SESSION['vuelos'] = mysqli_fetch_all($res, MYSQLI_ASSOC);

        echo '
        <script>
        alert("Se han encontrado vuelos");
        window.location.href = "../vistas/vuelos.php";
        </script>
        ';
    } else {
        echo '
        <script>
        alert("No se han encontrado vuelos con esos criterios");
        window.location.href = "../vistas/buscar_vuelos.html";
        </script>
        ';
    }
}

function RegistrarInfo($conn,$idvuelo,$numasiento,$nombre,$email,$phone,$radio,$genero,$numdoc,$tipodoc,$nacimiento)
{

    $validate = "SELECT `ap`.*, `a`.*, `av`.*, `v`.*
    FROM `asientos_pasajero` AS `ap` 
	INNER JOIN `asientos` AS `a` ON `ap`.`id_asiento` = `a`.`id_asiento` 
	INNER JOIN `aviones` AS `av` ON `a`.`id_avion` = `av`.`id_avion` 
	INNER JOIN `vuelos` AS `v` ON `v`.`id_avion` = `av`.`id_avion` WHERE ap.id_asiento = ? AND v.id_vuelo = ?";
    $val = mysqli_prepare($conn,$validate);
    mysqli_stmt_bind_param($val,"ii",$numasiento,$idvuelo);
    mysqli_stmt_execute($val);

    $res = mysqli_stmt_get_result($val);
    if (mysqli_num_rows($res) > 0) {
        echo '
        <script>
        alert("Asiento ya ocupado lo sentimos");
        window.location.href = "index.html";
        </script>
        ';
        exit();
    }

    $sql = "INSERT INTO compradores(nacimiento,num_doc,tipo_doc,email,nombre,telefono) VALUES (?,?,?,?,?,?)";
    $stmt = mysqli_prepare($conn,$sql);
    mysqli_stmt_bind_param($stmt,"ssisss",$nacimiento,$numdoc,$tipodoc,$email,$nombre,$phone);

    if (mysqli_stmt_execute($stmt)) {

    $idcomprador = mysqli_insert_id($conn);
    $idestado = 1;
    $sql1 = "INSERT INTO reservas(estado,id_vuelo,id_comprador) VALUES (?,?,?)";
    $stmt1 = mysqli_prepare($conn,$sql1);
    mysqli_stmt_bind_param($stmt1,"iii",$idestado,$idvuelo,$idcomprador);

        if (mysqli_stmt_execute($stmt1)) {
            $idreserva = mysqli_insert_id($conn);


            $sql2 = "INSERT INTO pasajeros(nacimiento,email,genero,infant,telefono,nombre,num_doc,tipo_doc) VALUES (?,?,?,?,?,?,?,?)";
            $stmt2 = mysqli_prepare($conn,$sql2);
            mysqli_stmt_bind_param($stmt2,"sssssssi",$nacimiento,$email,$genero,$radio,$phone,$nombre,$numdoc,$tipodoc);
            if (mysqli_stmt_execute($stmt2)) {
            $idpasajero = mysqli_insert_id($conn);
            $sql3 = "INSERT INTO asientos_pasajero(id_asiento,id_reserva,id_pasajero) VALUES (?,?,?)";
            $stmt3 = mysqli_prepare($conn,$sql3);
            mysqli_stmt_bind_param($stmt3,"iii",$numasiento,$idreserva,$idpasajero);
            if (mysqli_stmt_execute($stmt3)) {
                echo '
                <script>
                alert("Se ha registrado una reserva, revisa tu correo y continua al pago");
                window.location.href = "vistas/confirmacion.php?reserva='.$idreserva.'&idvuelo='.$idvuelo.'";
                </script>
                ';
            }
            else {
                echo '
                <script>
                alert("error en la reserva");
                window.location.href = "vistas/pago.html";
                </script>
                ';
            }
                
            }
        }

    }
}

function RegistrarInfoPasajero($conn,$reserva,$idvuelo,$numasiento,$nombre,$email,$phone,$radio,$genero,$numdoc,$tipodoc,$nacimiento)
{
    $validate = "SELECT `ap`.*, `a`.*, `av`.*, `v`.*
    FROM `asientos_pasajero` AS `ap` 
	INNER JOIN `asientos` AS `a` ON `ap`.`id_asiento` = `a`.`id_asiento` 
	INNER JOIN `aviones` AS `av` ON `a`.`id_avion` = `av`.`id_avion` 
	INNER JOIN `vuelos` AS `v` ON `v`.`id_avion` = `av`.`id_avion` WHERE ap.id_asiento = ? AND v.id_vuelo = ?";
    $val = mysqli_prepare($conn,$validate);
    mysqli_stmt_bind_param($val,"ii",$numasiento,$idvuelo);
    mysqli_stmt_execute($val);

    $res = mysqli_stmt_get_result($val);
    if (mysqli_num_rows($res) > 0) {
        echo '
        <script>
        alert("Asiento ya ocupado lo sentimos");
        window.location.href = "index.html";
        </script>
        ';
        exit();
    }
    $NoMore5 = "SELECT * FROM asientos_pasajero WHERE id_reserva = ?";
    $nomore = mysqli_prepare($conn,$NoMore5);
    mysqli_stmt_bind_param($nomore,"i",$reserva);
    mysqli_stmt_execute($nomore);
    $res1 = mysqli_stmt_get_result($nomore);

    if (mysqli_num_rows($res1) >= 5) {
        echo '
        <script>
        alert("La reserva no puede tener mas de 5 pasajeros, realiza otra");
        window.location.href = "index.html";
        </script>
        ';
        exit();
    }
            $sql2 = "INSERT INTO pasajeros(nacimiento,email,genero,infant,telefono,nombre,num_doc,tipo_doc) VALUES (?,?,?,?,?,?,?,?)";
            $stmt2 = mysqli_prepare($conn,$sql2);
            mysqli_stmt_bind_param($stmt2,"sssssssi",$nacimiento,$email,$genero,$radio,$phone,$nombre,$numdoc,$tipodoc);
            if (mysqli_stmt_execute($stmt2)) {
            $idpasajero = mysqli_insert_id($conn);
            $sql3 = "INSERT INTO asientos_pasajero(id_asiento,id_reserva,id_pasajero) VALUES (?,?,?)";
            $stmt3 = mysqli_prepare($conn,$sql3);
            mysqli_stmt_bind_param($stmt3,"iii",$numasiento,$reserva,$idpasajero);
            if (mysqli_stmt_execute($stmt3)) {
                echo '
                <script>
                alert("Se ha registrado una reserva, revisa tu correo y continua al pago");
                window.location.href = "vistas/confirmacion.php?reserva='.$reserva.'&idvuelo='.$idvuelo.'";
                </script>
                ';
            }
            else {
                echo '
                <script>
                alert("error en la reserva");
                window.location.href = "vistas/pago.html";
                </script>
                ';
            }
                
            }
}

    

?>

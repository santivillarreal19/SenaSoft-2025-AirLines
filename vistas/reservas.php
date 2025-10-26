<?php
require_once('../backend_php/conn/conn.php');

$idvuelo = $_POST['id_vuelo'] ?? '';

$sql = "SELECT 
  a.id_asiento,
  a.num_asiento,
  av.id_avion,
  av.modelo,
  v.id_vuelo,
  v.origen,
  v.destino,
  v.fecha_vuelo
FROM asientos AS a
INNER JOIN aviones AS av ON a.id_avion = av.id_avion
INNER JOIN vuelos AS v ON v.id_avion = av.id_avion
WHERE v.id_vuelo = ?";

$stmt = mysqli_prepare($conn, $sql);
mysqli_stmt_bind_param($stmt, "i", $idvuelo);
mysqli_stmt_execute($stmt);
$res = mysqli_stmt_get_result($stmt);
?>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SENA-AirLines - Reserva tu asiento</title>
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</head>
<body class="bg-gray-100">

  <!-- Navbar -->
  <nav class="bg-gray-700 border-gray-200">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
      <a href="https://www.sena.edu.co" class="flex items-center space-x-3">
        <img src="../style/logoSena.png" class="h-8" alt="Logo SENA" />
        <span class="self-center text-2xl font-semibold text-white">SENA-AirLines</span>
      </a>
      <span class="self-center text-l text-white">Estamos para servirte</span>
    </div>
  </nav>

  <h2 class="text-center text-2xl font-semibold my-6">Selecciona tu asiento ✈️</h2>

  <!-- Contenedor de asientos -->
  <div class="max-w-3xl mx-auto bg-white p-6 rounded-2xl shadow-md">
    <div id="contenedorAsientos" class="grid grid-cols-6 gap-4 justify-items-center">
      <?php
      $columna = 1;

      while ($row = mysqli_fetch_assoc($res)) {
        
        if ($columna == 3) {
          echo "<div class='w-6'></div>"; // Pasillo vacío
          $columna++;
        }

        echo "
          <div class='w-20 h-20 bg-green-500 hover:bg-green-600 text-white font-bold rounded-lg flex items-center justify-center cursor-pointer transition'>
            <form method='POST' action='info_personal.php'>
              <input type='hidden' name='id_vuelo' value='{$idvuelo}'>
              <input type='hidden' name='id_asiento' value='{$row['id_asiento']}'>
              <button type='submit' class='w-full h-full flex items-center justify-center'>
                {$row['num_asiento']}
              </button>
            </form>
          </div>
        ";

        // Pasar a la siguiente columna
        $columna++;

        // Reiniciar el contador cada 6 columnas
        if ($columna > 6) {
          $columna = 1;
        }
      }
      ?>
    </div>
  </div>

  <p class="text-center mt-6 text-gray-500">Haz clic en un asiento para reservarlo.</p>

</body>
</html>

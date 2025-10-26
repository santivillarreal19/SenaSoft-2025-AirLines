<?php
$reserva = $_GET['reserva']??'';
$vuelo = $_GET['idvuelo']??'';
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SENA-AirLines - Menú Principal</title>
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</head>
<body class="bg-gray-50">

  <!-- NAVBAR -->
  <nav class="bg-blue-700 border-gray-200 dark:bg-gray-900">
    <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
      <a href="https://www.sena.edu.co" class="flex items-center space-x-3 rtl:space-x-reverse">
        <img src="style/logoSena.png" class="h-8" alt="Logo SENA" />
        <span class="self-center text-2xl font-semibold whitespace-nowrap text-white">SENA-AirLines</span>
      </a>
      <button data-collapse-toggle="navbar-default" type="button"
        class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-300 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700"
        aria-controls="navbar-default" aria-expanded="false">
        <span class="sr-only">Abrir menú</span>
        <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 17 14">
          <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M1 1h15M1 7h15M1 13h15" />
        </svg>
      </button>
      <div class="hidden w-full md:block md:w-auto" id="navbar-default">
        <ul
          class="font-medium flex flex-col p-4 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 md:mt-0 md:border-0 md:bg-blue-700">
          <li>
            <a href="vistas/ruta_vuelo.html" class="block py-2 px-3 text-white rounded hover:bg-blue-600 md:hover:text-red-50">Agenda tu vuelo</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
   
  <?php
  echo
  "<a href='AddPasajero.php?reserva=".$reserva."&vuelo=".$vuelo."'>Añadir Pasajero</a>
  <a href='pago.php?reserva=".$reserva."'>Continuar al pago</a>";
  ?>

</body>
</html>
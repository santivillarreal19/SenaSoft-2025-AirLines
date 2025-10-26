<?php
require_once('../backend_php/conn/conn.php');
$id_reserva = $_POST['reserva'] ?? '';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tiquetes</title>
    
  <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
</head>
<body>
    <form action="../MakePdf.php" method="post">
        <input type="hidden" name="reserva" value="<?php echo htmlspecialchars($id_reserva)?>" required>

        <button type="submit" class="bg-green-600 hover:bg-green-700 text-white px-4 py-2 rounded-lg">
    Generar PDF
  </button>
    </form>
</body>
</html>

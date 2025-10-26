<?php
require_once 'vendor/autoload.php';
use Dompdf\Dompdf;
use Dompdf\Options;
require_once 'backend_php/conn/conn.php';

$id_reserva = $_POST['reserva'] ?? '';

$sql = "
SELECT 
    r.id_reserva,
    r.fecha AS fecha_reserva,
    e.estados AS estado_reserva,
    
    -- DATOS DEL VUELO
    v.id_vuelo,
    v.origen,
    v.destino,
    v.fecha_vuelo,
    v.precio,
    a.modelo AS modelo_avion,
    a.capacidad AS capacidad_avion,
    
    -- DATOS DEL COMPRADOR
    c.nombre AS nombre_comprador,
    c.num_doc AS doc_comprador,
    c.email AS email_comprador,
    c.telefono AS tel_comprador,
    td.documentos AS tipo_doc_comprador,
    
    -- DATOS DE PASAJEROS
    p.id_pasajero,
    p.nombre AS nombre_pasajero,
    p.num_doc AS doc_pasajero,
    p.email AS email_pasajero,
    p.telefono AS tel_pasajero,
    g.generos AS genero_pasajero,
    asi.num_asiento AS asiento
    
FROM reservas r
INNER JOIN estados e ON r.estado = e.id_estado
INNER JOIN vuelos v ON r.id_vuelo = v.id_vuelo
INNER JOIN aviones a ON v.id_avion = a.id_avion
INNER JOIN compradores c ON r.id_comprador = c.id_comprador
INNER JOIN tipos_documentos td ON c.tipo_doc = td.id_documento
INNER JOIN asientos_pasajero ap ON r.id_reserva = ap.id_reserva
INNER JOIN pasajeros p ON ap.id_pasajero = p.id_pasajero
INNER JOIN generos g ON p.genero = g.id_genero
INNER JOIN asientos asi ON ap.id_asiento = asi.id_asiento
WHERE r.id_reserva = '$id_reserva'
ORDER BY p.nombre ASC
";

$result = $conn->query($sql);
$datos = [];
while ($row = $result->fetch_assoc()) {
    $datos[] = $row;
}

if (count($datos) > 0) {
    $reserva = $datos[0];

    // 🔹 Encabezado general
    $html = '
    <style>
        body { font-family: DejaVu Sans, sans-serif; font-size: 12px; }
        h1, h2, h3 { text-align: center; color: #003366; }
        table { width: 100%; border-collapse: collapse; margin-top: 10px; }
        th, td { border: 1px solid #aaa; padding: 6px; text-align: left; }
        th { background: #e6f0ff; }
        .section-title { background: #003366; color: #fff; padding: 5px; }
    </style>

    <h1>SENA Airlines</h1>
    <h3>Confirmación de Reserva</h3>
    <p><strong>ID Reserva:</strong> '.$reserva['id_reserva'].' | <strong>Fecha:</strong> '.$reserva['fecha_reserva'].'</p>
    <p><strong>Estado:</strong> '.$reserva['estado_reserva'].'</p>

    <div class="section-title">🧾 Datos del Comprador</div>
    <p><strong>Nombre:</strong> '.$reserva['nombre_comprador'].'<br>
    <strong>Documento:</strong> '.$reserva['tipo_doc_comprador'].' '.$reserva['doc_comprador'].'<br>
    <strong>Email:</strong> '.$reserva['email_comprador'].'<br>
    <strong>Teléfono:</strong> '.$reserva['tel_comprador'].'</p>

    <div class="section-title">✈️ Datos del Vuelo</div>
    <p><strong>Origen:</strong> '.$reserva['origen'].' → <strong>Destino:</strong> '.$reserva['destino'].'<br>
    <strong>Fecha de Vuelo:</strong> '.$reserva['fecha_vuelo'].'<br>
    <strong>Avión:</strong> '.$reserva['modelo_avion'].' (Capacidad: '.$reserva['capacidad_avion'].' asientos)<br>
    <strong>Precio por persona:</strong> $'.$reserva['precio'].'</p>

    <div class="section-title">👥 Pasajeros</div>
    <table>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Documento</th>
                <th>Email</th>
                <th>Teléfono</th>
                <th>Género</th>
                <th>Asiento</th>
            </tr>
        </thead>
        <tbody>';
    
    foreach ($datos as $d) {
        $html .= '
            <tr>
                <td>'.$d['nombre_pasajero'].'</td>
                <td>'.$d['doc_pasajero'].'</td>
                <td>'.$d['email_pasajero'].'</td>
                <td>'.$d['tel_pasajero'].'</td>
                <td>'.$d['genero_pasajero'].'</td>
                <td>'.$d['asiento'].'</td>
            </tr>';
    }

    $html .= '
        </tbody>
    </table>

    <p style="text-align:center; margin-top:30px;">Gracias por viajar con <strong>SENA Airlines</strong>. ¡Feliz vuelo! ✈️</p>
    ';
} else {
    $html = '<p>No se encontraron datos para esta reserva.</p>';
}

// Configurar y generar PDF
$options = new Options();
$options->set('isHtml5ParserEnabled', true);
$options->set('isRemoteEnabled', true);
$dompdf = new Dompdf($options);
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();
$dompdf->stream("reserva_$id_reserva.pdf", ["Attachment" => false]);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table,
        td {
            border: 1px solid black;
            border-collapse: collapse;
            font-size: 11px;
        }

        th {
            border: 1px solid black;
            border-collapse: collapse;
            font-size: 14px;
        }
    </style>
</head>


<body>

    <?php
    header("Content-type: application/vnd-ms-excel");
    header("Content-Disposition: attachment; filename=Laporan.xls");
    $table = '
    <table border="1">
    <tr>
           <th>nomer</th>
          <th>nama</th>
          <th>Nim</th>
          <th>Tanggal Lahir</th>
          <th>jenis_kelamin</th>
        </tr>';
    $no = 1;
    foreach ($siswa as $dt) {
        $table .= '
         <tr>
                <td>' . $no++. '</td>
                 <td>' . $dt->nama . '</td>
                <td>' . $dt->nim . '</td>
                <td>' . $dt->tanggal_lahir . '</td>
                <td>' . $dt->jenis_kelamin . '</td>
                <td>' . $dt->jenis_kelamin . '</td>
               

            </tr>';
    }
    $table .= '</table>';
    echo $table;

    ?>
</body>

</html>
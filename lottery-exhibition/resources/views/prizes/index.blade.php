<!DOCTYPE html>
<html>

<head>
    <title>ระบบสุ่มรางวัล</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-beta2/css/bootstrap.min.css">
    <style>
        /* เพิ่มสีพื้นหลังและสีข้อความให้กับตาราง */
        .table-custom {
            background-color: #f9f9f9;
            /* สีพื้นหลังของตาราง */
            border: 1px solid #dee2e6;
            /* สีกรอบของตาราง */
        }

        .table-custom thead {
            background-color: #000000;
            /* สีพื้นหลังของส่วนหัวตาราง */
            color: white;
            /* สีข้อความในส่วนหัวตาราง */
        }

        .table-custom tbody tr:nth-child(even) {
            background-color: #f2f2f2;
            /* สีพื้นหลังของแถวที่เป็นคู่ */
        }

        .table-custom tbody tr:nth-child(odd) {
            background-color: #ffffff;
            /* สีพื้นหลังของแถวที่เป็นคี่ */
        }

        .table-custom tbody td {
            border: 1px solid #dee2e6;
            /* สีกรอบของเซลล์ */
        }
    </style>
</head>

{{-- <body>
    <div class="container mt-5">
        <h1>รางวัลล็อตเตอรี่ Diversition</h1>
        <div class="mb-3">
            <form action="{{ route('prizes.draw') }}" method="POST">
                @csrf
                <button type="submit" class="btn btn-primary">ดำเนินการสุ่มรางวัล</button>
            </form>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>รางวัล</th>
                    <th>หมายเลข</th>
                </tr>
            </thead>
            <tbody>
                @if ($prize)
                    <tr>
                        <td>รางวัลที่ 1</td>
                        <td>{{ $prize->first_prize }}</td>
                    </tr>
                    <tr>
                        <td>รางวัลเลขข้างเคียงรางวัลที่ 1</td>
                        <td>{{ implode(', ', json_decode($prize->adjacent_numbers)) }}</td>
                    </tr>
                    <tr>
                        <td>รางวัลที่ 2</td>
                        <td>{{ implode(', ', json_decode($prize->second_prizes)) }}</td>
                    </tr>
                    <tr>
                        <td>รางวัลเลขท้าย 2 ตัว</td>
                        <td>{{ str_pad($prize->last_two_digits, 2, '0', STR_PAD_LEFT) }}</td>
                    </tr>
                @else
                    <tr>
                        <td colspan="2">ยังไม่มีการสุ่มรางวัล</td>
                    </tr>
                @endif
            </tbody>
        </table>

        <div class="mt-5">
            <h2>ตรวจรางวัล</h2>
            <form action="{{ route('participants.check') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <input type="number" name="number" class="form-control" placeholder="กรอกหมายเลขล็อตเตอรี่">
                </div>
                <button type="submit" class="btn btn-success">ตรวจรางวัล</button>
            </form>
        </div>
    </div>
</body> --}}

<body>
    <div class="container mt-5">
        <h1>รางวัลล็อตเตอรี่ Diversition</h1>
        <div class="mb-3">
            <form action="{{ route('prizes.draw') }}" method="POST">
                @csrf
                <button type="submit" class="btn btn-primary">ดำเนินการสุ่มรางวัล</button>
            </form>
        </div>
        <table class="table table-custom">
            <thead>
                <tr>
                    <th>รางวัล</th>
                    <th>หมายเลข</th>
                </tr>
            </thead>
            <tbody>
                @if ($prize)
                    <tr>
                        <td>รางวัลที่ 1</td>
                        <td>{{ $prize->first_prize }}</td>
                    </tr>
                    <tr>
                        <td>รางวัลเลขข้างเคียงรางวัลที่ 1</td>
                        <td>{{ implode(', ', json_decode($prize->adjacent_numbers)) }}</td>
                    </tr>
                    <tr>
                        <td>รางวัลที่ 2</td>
                        <td>{{ implode(', ', json_decode($prize->second_prizes)) }}</td>
                    </tr>
                    <tr>
                        <td>รางวัลเลขท้าย 2 ตัว</td>
                        <td>{{ $prize->last_two_digits }}</td>
                    </tr>
                @else
                    <tr>
                        <td colspan="2">ยังไม่มีการสุ่มรางวัล</td>
                    </tr>
                @endif
            </tbody>
        </table>

        <div class="mt-5">
            <h2>ตรวจรางวัล</h2>
            <form action="{{ route('participants.check') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <input type="number" name="number" class="form-control" placeholder="กรอกหมายเลขล็อตเตอรี่">
                </div>
                <button type="submit" class="btn btn-success">ตรวจรางวัล</button>
            </form>
        </div>
    </div>
</body>

</html>

<!DOCTYPE html>
<html>

<head>
    <title>ผลการตรวจรางวัล</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-beta2/css/bootstrap.min.css">
    <style>
        .result-container {
            border: 2px solid #007bff;
            /* สีของกรอบ */
            border-radius: .25rem;
            /* มุมโค้ง */
            padding: 1rem;
            /* ระยะห่างภายใน */
            background-color: #f8f9fa;
            /* พื้นหลัง */
            margin-bottom: 2rem;
            /* ระยะห่างด้านล่าง */
        }

        .btn-custom {
            border: 2px solid #007bff;
            /* กำหนดสีของกรอบ */
            color: #007bff;
            /* กำหนดสีของข้อความ */
            background-color: transparent;
            /* กำหนดพื้นหลังให้เป็นโปร่งใส  */
            padding: .375rem .75rem;
            /* กำหนดขนาดของปุ่ม */
            border-radius: .25rem;
            /* กำหนดมุมโค้งของกรอบ */
        }

        .btn-custom:hover {
            background-color: #1c70c9;
            /* เปลี่ยนพื้นหลังเมื่อโฮเวอร์ */
            color: #fff;
            /* เปลี่ยนสีข้อความเมื่อโฮเวอร์ */
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <h1>ผลการตรวจรางวัลล็อตเตอรี่ Diversition</h1>
        <div class="result-container">
            <div class="alert alert-info mb-0">
                {{ $result }}
            </div>
        </div>

        <a href="{{ route('prizes.index') }}" class="btn btn-custom">กลับหน้าหลัก</a>
    </div>
</body>

</html>

<?php
require 'koneksi.php';

if (isset($_POST["submit"])) {
    // Ambil data input
    $username = mysqli_real_escape_string($koneksi, $_POST["username"]);
    $email = mysqli_real_escape_string($koneksi, $_POST["email"]);
    $password = mysqli_real_escape_string($koneksi, $_POST["password"]);
    $tipe = mysqli_real_escape_string($koneksi, $_POST["tipe"]);

    // Validasi input kosong
    if (empty($username) || empty($email) || empty($password) || empty($tipe)) {
        echo "<script>alert('Semua kolom harus diisi!');</script>";
        exit();
    }

    // Validasi format email
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "<script>alert('Format email tidak valid!');</script>";
        exit();
    }

    // Cek duplikasi username atau email
    $duplicate = mysqli_query($koneksi, "SELECT * FROM tb_user WHERE username = '$username' OR email = '$email'");
    if (mysqli_num_rows($duplicate) > 0) {
        echo "<script>alert('Username atau Email sudah ada!');</script>";
        exit();
    }

    // Query insert data ke database
    $query = "INSERT INTO tb_user (username, email, password, tipe) VALUES ('$username', '$email', '$password', '$tipe')";
    if (mysqli_query($koneksi, $query)) {
        echo "<script>alert('Buat akun sukses! Silakan login.'); window.location.href='../login.php';</script>";
    } else {
        echo "<script>alert('Gagal membuat akun: " . mysqli_error($koneksi) . "');</script>";
    }
}
?>

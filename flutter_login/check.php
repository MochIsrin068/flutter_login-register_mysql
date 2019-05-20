<?php
    require "connect.php";

    if($_SERVER['REQUEST_METHOD'] == "POST"){
        $data = array();

        $username = $_POST['username'];
        $password = $_POST['password'];

        $query = mysqli_query($con, "SELECT * FROM login WHERE username='$username' AND password='$password'");
        $cek = mysqli_fetch_array($query);

        if(isset($cek) && $cek != null){
            $data['msg'] = "DATA ADA";
            $data['level'] = $cek['level'];
            $data['username'] = $cek['username'];
            echo json_encode($data);
        }else{
            $data['msg'] = "DATA TIDAK ADA";
            echo json_encode($data);
        }
    }
?>
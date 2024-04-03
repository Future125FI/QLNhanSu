<?php
include("ketnoi.inc");

// Kiểm tra xem có tham số MaCB truyền vào không
if(isset($_GET['MaCB'])) {
    $MaCB = $_GET['MaCB'];

    // Truy vấn thông tin từ bảng nhansuhuyen
    $query = "SELECT * FROM nhansuxaphuhuu WHERE MaCB = '$MaCB'";
    $result = mysql_query($query, $link);

    // Kiểm tra kết quả truy vấn
    if($result) {
        $row = mysql_fetch_assoc($result);

        // Gán giá trị cho các biến
        $Maso = $row['Maso'];
        $Hoten = $row['Hoten'];
        $Ngaysinh = $row['Ngaysinh'];
        $Gioitinh = $row['Gioitinh'];
        $Quoctich = $row['Quoctich'];
        $Dantoc = $row['Dantoc'];
        $Tongiao = $row['Tongiao'];
        $Quequan = $row['Quequan'];
        $Giaoducphothong = $row['Giaoducphothong'];
        $Chuyenmonnghiepvu = $row['Chuyenmonnghiepvu'];
        $Tuoi = $row['Tuoi'];
        $Lyluanchinhtri = $row['Lyluanchinhtri'];
        $Ngoaingu = $row['Ngoaingu'];
        $Nghenghiepchucvu = $row['Nghenghiepchucvu'];
        $Noicongtac = $row['Noicongtac'];
        $Ngayvaodang = $row['Ngayvaodang'];
        $Ghichu = $row['Ghichu'];
    } else {
        // Xử lý lỗi nếu có
        echo "Lỗi truy vấn: " . mysql_error();
    }
}

// Xử lý khi form được submit
if(isset($_POST['btnsua'])) {
    // Lấy giá trị từ form
    $MaCB = $_POST['txtmacb'];
    $Hoten = $_POST['txthoten'];
    $Ngaysinh = $_POST['txtngaysinh'];
    $Gioitinh = $_POST['txtgioitinh'];
    $Quoctich = $_POST['txtqtich'];
    $Dantoc = $_POST['txtdantoc'];
    $Tongiao = $_POST['txttongiao'];
    $Quequan = $_POST['txtquequan'];
    $Giaoducphothong = $_POST['txtgiaoducphothong'];
    $Chuyenmonnghiepvu = $_POST['txtchuyenmonnghiepvu'];
    $Tuoi = $_POST['txttuoi'];
    $Lyluanchinhtri = $_POST['txtlyluanchinhtri'];
    $Ngoaingu = $_POST['txtnoaingu'];
    $Nghenghiepchucvu = $_POST['txtnghenghiepchucvu'];
    $Noicongtac = $_POST['txtnoicongtac'];
    $Ngayvaodang = $_POST['txtngayvaodang'];
    $Ghichu = $_POST['txtghichu'];

    // Thực hiện câu lệnh SQL để cập nhật thông tin vào cơ sở dữ liệu
    $update_query = "UPDATE nhansuxaphuhuu SET Hoten='$Hoten', Ngaysinh='$Ngaysinh', Gioitinh='$Gioitinh', Quoctich='$Quoctich', Dantoc='$Dantoc', Tongiao='$Tongiao', Quequan='$Quequan', Giaoducphothong='$Giaoducphothong', Chuyenmonnghiepvu='$Chuyenmonnghiepvu', Tuoi='$Tuoi', Lyluanchinhtri='$Lyluanchinhtri', Ngoaingu='$Ngoaingu', Nghenghiepchucvu='$Nghenghiepchucvu', Noicongtac='$Noicongtac', Ngayvaodang='$Ngayvaodang', Ghichu='$Ghichu' WHERE MaCB='$MaCB'";
    $result = mysql_query($update_query, $link);

    // Kiểm tra kết quả cập nhật
    if ($result) {
        echo "Thông tin của nhân viên đã được cập nhật thành công.";
    } else {
        echo "Đã xảy ra lỗi trong quá trình cập nhật thông tin.";
    }
}
?>

<!-- Phần HTML của form -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thay đổi thông tin người dùng</title>
</head>

<body>
<center><h1>Thay đổi thông tin người dùng</h1></center>
<form id="form1" name="form1" method="post" action="tv_edithuyen.php">
  <table width="100%" border="0" height="100%">
    <!-- Form fields go here with updated field names -->
    <!-- ... -->
  </table>
</form>
</body>
</html>

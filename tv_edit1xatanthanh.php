<?php
include ("ketnoi.inc");

if(isset($_GET["MaCB"])) {
    $MaCB = $_GET["MaCB"];
    $kq = mysql_query("SELECT * FROM nhansuxatanthanh where MaCB = '$MaCB'", $link);
    if($kq) {
        $i = mysql_fetch_row($kq);
        $MaCB = $i[0];
        $Hoten = $i[1];
        $Ngaysinh = $i[2];
        $Gioitinh = $i[3];
        $Quoctich = $i[4];
        $Dantoc = $i[5];
        $Tongiao = $i[6];
        $Quequan = $i[7];
        $Giaoducphothong = $i[8];
        $Chuyenmonnghiepvu = $i[9];
        $Tuoi = $i[10];
        $Lyluanchinhtri = $i[11];
        $Ngoaingu = $i[12];
        $Nghenghiepchucvu = $i[13];
        $Noicongtac = $i[14];
        $Ngayvaodang = $i[15];
		$Tinhtrang = $i[16];
        $Ghichu = $i[17];
        $Thaotac = $i[18];
    }
}

if(isset($_POST["btnsua"])) {
    $MaCB = $_POST["txtmacb"];
    $Hoten = $_POST["txthoten"];
    $Ngaysinh = $_POST["txtngaysinh"];
    $Gioitinh = $_POST["txtgioitinh"];
    $Quoctich = $_POST["txtquoctich"];
    $Dantoc = $_POST["txtdantoc"];
    $Tongiao = $_POST["txttongiao"];
    $Quequan = $_POST["txtquequan"];
    $Giaoducphothong = $_POST["txtgiaoducphothong"];
    $Chuyenmonnghiepvu = $_POST["txtchuyenmonnghiepvu"];
    $Tuoi = $_POST["txttuoi"];
    $Lyluanchinhtri = $_POST["txtlyluanchinhtri"];
    $Ngoaingu = $_POST["txtngoaingu"];
    $Nghenghiepchucvu = $_POST["txtnghenghiep"];
    $Noicongtac = $_POST["txtnoicongtac"];
    $Ngayvaodang = $_POST["txtngayvaodang"];
	$Tinhtrang = $_POST["txttinhtrang"];
    $Ghichu = $_POST["txtghichu"];
    $Thaotac = $_POST["txtthaotac"];

    // Thực hiện câu lệnh SQL để cập nhật thông tin vào cơ sở dữ liệu
    $update_query = "UPDATE nhansuxatanthanh SET Hoten='$Hoten', Ngaysinh='$Ngaysinh', Gioitinh='$Gioitinh', Quoctich='$Quoctich', Dantoc='$Dantoc', Tongiao='$Tongiao', Quequan='$Quequan',  Giaoducphothong='$Giaoducphothong', Chuyenmonnghiepvu='$Chuyenmonnghiepvu', Tuoi='$Tuoi', Lyluanchinhtri='$Lyluanchinhtri', Ngoaingu='$Ngoaingu', Nghenghiepchucvu='$Nghenghiepchucvu', Noicongtac='$Noicongtac', Ngayvaodang='$Ngayvaodang', Ghichu='$Ghichu', Tinhtrang='$Tinhtrang', Thaotac='$Thaotac' WHERE MaCB='$MaCB'";
    $result = mysql_query($update_query, $link);

    if ($result) {
        echo "Thông tin của nhân viên đã được cập nhật thành công.";
    } else {
        echo "Đã xảy ra lỗi trong quá trình cập nhật thông tin.";
    }
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Thay đổi thông tin người dùng</title>
</head>

<body>
<center><h1>Thay đổi thông tin người dùng</h1></center>
<form id="form1" name="form1" method="post" action="tv_edit1xatanthanh.php" >
  <table width="100%" border="0" height="100%">
    <tr>
    <td colspan="5"><a href="index.php">Quay trở lại trang chủ</a></td>
</tr>
<tr>
    <td colspan="5"><a href="tv_danhmucxatanthanh.php?search=">Quay trở lại trang trước</a></td>
</tr>
    <tr>
    <td width="16%" rowspan="19">&nbsp;</td>
    <td width="9%" rowspan="19">&nbsp;</td>
    <td width="23%"><div align="left">Mã CB</div></td>
    <td width="33%"><label>
        <input name="txtmacb" type="text" id="txtmacb" size="30" readonly="readonly" value="<?php echo $MaCB; ?>" />
    </label> 
    &nbsp;</td>
    <td width="16%" rowspan="15">&nbsp;</td>
</tr>
<tr>
    <td><div align="left">Họ tên </div></td>
    <td><label>
        <input name="txthoten" type="text" id="txthoten" size="30" value="<?php echo $Hoten; ?>" />
    </label></td>
</tr>
<tr>
    <td><div align="left">Ngày sinh </div></td>
    <td><label>
        <input name="txtngaysinh" type="text" id="txtngaysinh" size="10" maxlength="10" value="<?php echo $Ngaysinh; ?>" />
    </label></td>
</tr>
<tr>
    <td><div align="left">Giới tính</div></td>
    <td><label>
        <input name="txtgioitinh" type="text" id="txtgioitinh" size="30" value="<?php echo $Gioitinh;?>" />
    </label>
    <label></label></td>
</tr>
<tr>
    <td><div align="left">Quốc tịch</div></td>
    <td><label>
        <input name="txtquoctich" type="text" id="txtquoctich" size="30" value="<?php echo $Quoctich; ?>" />
    </label></td>
</tr>
<tr>
    <td><div align="left">Dân tộc</div></td>
    <td><label>
        <input name="txtdantoc" type="text" id="txtdantoc" size="30"  value="<?php echo $Dantoc; ?>" />
    </label></td>
</tr>
<tr>
    <td><center>
        <div align="left">Tôn giáo</div>
    </center></td>
    <td><input name="txttongiao" type="text" id="txttongiao" size="30"  value="<?php echo $Tongiao; ?>" /></td>
</tr>
<tr>
    <td><center>
        <div align="left">Quê quán</div>
    </center></td>
    <td><input name="txtquequan" type="text" id="txtquequan" size="30"  value="<?php echo $Quequan; ?>" /></td>
</tr>
<tr>
    <td><div align="left">Giáo dục phổ thông</div></td>
    <td><input name="txtgiaoducphothong" type="text" id="txtgiaoducphothong" size="30"  value="<?php echo $Giaoducphothong; ?>" /></td>
</tr>
<tr>
    <td><div align="left">Chuyên môn nghiệp vụ</div></td>
    <td><input name="txtchuyenmonnghiepvu" type="text" id="txtchuyenmonnghiepvu" size="30"  value="<?php echo $Chuyenmonnghiepvu; ?>" /></td>
</tr>
<tr>
    <td><div align="left">Tuổi</div></td>
    <td><input name="txttuoi" type="text" id="txttuoi" size="5"  value="<?php echo $Tuoi; ?>" /></td>
</tr>
<tr>
    <td><div align="left">Lý luận chính trị</div></td>
<td><input name="txtlyluanchinhtri" type="text" id="txtlyluanchinhtri" size="30" value="<?php echo isset($Lyluanchinhtri) ? $Lyluanchinhtri : ''; ?>" /></td>
</tr>
<tr>
<td><div align="left">Ngoại ngữ</div></td>
<td><input name="txtngoaingu" type="text" id="txtngoaingu" size="30" value="<?php echo isset($Ngoaingu) ? $Ngoaingu : ''; ?>" /></td>
</tr>
<tr>
<td><div align="left">Nghề nghiệp/chức vụ</div></td>
<td><input name="txtnghenghiep" type="text" id="txtnghenghiep" size="30" value="<?php echo isset($Nghenghiepchucvu) ? $Nghenghiepchucvu : ''; ?>" /></td>
</tr>
<tr>
<td><div align="left">Nơi công tác</div></td>
<td><input name="txtnoicongtac" type="text" id="txtnoicongtac" size="30" value="<?php echo isset($Noicongtac) ? $Noicongtac : ''; ?>" /></td>
</tr>
<tr>
    <td><div align="left">Ngày vào Đảng</div></td>
    <td><input name="txtngayvaodang" type="text" id="txtngayvaodang" size="10" value="<?php echo isset($Ngayvaodang) ? $Ngayvaodang : ''; ?>" /></td>
</tr>
<tr>
<td><div align="left">Tình trạng</div></td>
<td><input name="txttinhtrang" type="text" id="txttinhtrang" size="30" value="<?php echo isset($Tinhtrang) ? $Tinhtrang : ''; ?>" /></td>
</tr>
<tr>
<td><div align="left">Ghi chú</div></td>
<td><input name="txtghichu" type="text" id="txtghichu" size="30" value="<?php echo isset($Ghichu) ? $Ghichu : ''; ?>" /></td>
</tr>
<tr>
<td><div align="left">Thao tác</div></td>
<td><input name="txtthaotac" type="text" id="txtthaotac" size="30" value="<?php echo isset($Thaotac) ? $Thaotac : ''; ?>" /></td>

</tr>


      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="5">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><input name="btnsua" type="submit" id="btnsua" value="    Sửa   " /></td>
      <td><input name="btnsua2" type="reset" id="btnsua2" value="Làm lại" /></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>

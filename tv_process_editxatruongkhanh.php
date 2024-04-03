<?php
//nhận dữ liệu lấy về bên trang sửa thông tin
$MaCB = !(isset($_POST["txtmacb"]))?"":$_POST["txtmacb"];
$Hoten = !(isset($_POST["txthoten"]))?"":$_POST["txthoten"];
$Ngaysinh = !(isset($_POST["txtngaysinh"]))?"":$_POST["txtngaysinh"];
$Gioitinh = !(isset($_POST["txtgioitinh"]))?"":$_POST["txtgioitinh"];
$Quoctich = !(isset($_POST["txtquoctich"]))?"":$_POST["txtquoctich"];
$Dantoc = !(isset($_POST["txtdantoc"]))?"":$_POST["txtdantoc"];
$Tongiao = !(isset($_POST["txttongiao"]))?"":$_POST["txttongiao"];
$Quequan = !(isset($_POST["txtquequan"]))?"":$_POST["txtquequan"];
$Giaoducphothong = !(isset($_POST["txtgiaoducphothong"]))?"":$_POST["txtgiaoducphothong"];
$Chuyenmonnghiepvu = !(isset($_POST["txtchuyenmonnghiepvu"]))?"":$_POST["txtchuyenmonnghiepvu"];
$Tuoi = !(isset($_POST["txttuoi"]))?"":$_POST["txttuoi"];
$Lyluanchinhtri = !(isset($_POST["txtlyluanchinhtri"]))?"":$_POST["txtlyluanchinhtri"];
$Ngoaingu = !(isset($_POST["txtngoaingu"]))?"":$_POST["txtngoaingu"];
$Nghengiepchucvu = !(isset($_POST["txtnghengiepchucvu"]))?"":$_POST["txtnghengiepchucvu"];
$Noicongtac = !(isset($_POST["txtnoicongtac"]))?"":$_POST["txtnoicongtac"];
$Ngayvaodang = !(isset($_POST["txtngayvaodang"]))?"":$_POST["txtngayvaodang"];
$Ghichu = !(isset($_POST["txtghichu"]))?"":$_POST["txtghichu"];
$Thaotac = !(isset($_POST["txtthaotac"]))?"":$_POST["txtthaotac"];
//kết nối tới csdl
		include("ketnoi.inc");
		$ketqua_them = mysql_query("update nhansuxatruongkhanh set Hoten='$Hoten',Ngaysinh='$Ngaysinh',Gioitinh='$Gioitinh',Quoctich='$Quoctich',Dantoc='$Dantoc',Tongiao='$Tongiao',Quequan='$Quequan', Giaoducphothong='$Giaoducphothong',Chuyenmonnghiepvu='$Chuyenmonnghiepvu',Tuoi='$Tuoi',Lyluanchinhtri='$Lyluanchinhtri', Ngoaingu='$Ngoaingu',Nghengiepchucvu='$Nghengiepchucvu',Noicongtac='$Noicongtac', Ngayvaodang='$Ngayvaodang',Ghichu='$Ghichu', Thaotac='$Thaotac' where MaCB='$MaCB'",$link);
				if($ketqua_them)
				{
					header("location:tv_add_successxatruongkhanh.php?MaCB=".$MaCB.""); 
				}
				else
				{
					?>
					<script language="javascript">
					window.alert(" Có lỗi! Không thực hiện thay đổi được! <br> Vui lòng thử lại");
					</script>
					<?php
					header("location:tv_edit1xatruongkhanh.php?MaCB='$MaCB'");
				}
	
?>
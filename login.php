<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
ob_start();
session_start();
error_reporting(E_ALL ^ E_NOTICE);

$host = "localhost";  
$kullanici = "root";         
$veritabani = "proje";
$sifre="";

$mysqlbaglantisi=mysql_connect($host,$kullanici,$sifre);

if(!$mysqlbaglantisi) die("Mysql'e Bağlanılamıyor");
mysql_select_db($veritabani,$mysqlbaglantisi) or die("Veritabanına Bağlanılamıyor");

$kadi=$_POST['kadi'];
$ksifre=$_POST['ksifre'];
if(($kadi=="")||($ksifre==""))
{
echo "Kullanıcı Girisi Sayfasındaki Lütfen Boş Bıraktığınız Yerleri Doldurunuz";
}
else
{
$sorgu=mysql_fetch_array(mysql_query("(SELECT * FROM uyelik WHERE kullanici_adi='$kadi' and kullanici_sifre='$ksifre')"));

if(($kadi==$sorgu['kullanici_adi'])&&($ksifre==$sorgu['kullanici_sifre']))
{
$_SESSION["kullanici"]="online";
$_SESSION["user"]=$kadi;

header('location: anasayfa.php');
}
else
{
echo "Kullanıcı Adı Veya Şifreniz Hatalı";
header('refresh:2 url=giris.php');
}
}
ob_end_flush();
?>
</body>
</html>

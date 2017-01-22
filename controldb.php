<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
$host = "localhost";  
$kullanici = "root";         
$veritabani = "proje";
$sifre="";
$mysqlbaglantisi=mysql_connect($host,$kullanici,$sifre);

if(!$mysqlbaglantisi) die("Mysql'e Bağlanılamıyor");

mysql_select_db($veritabani,$mysqlbaglantisi) or die("Veritabanına Bağlanılamıyor");
$say=mysql_query("SELECT COUNT(*) FROM kullanici_info");
	$mkoy=mysql_fetch_array($say);
	echo $mkoy['0'];
?>
</body>
</html>

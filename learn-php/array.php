<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Print array</title>
</head>

<body>

<?php $numbers = array();

$numbers[] = 1;
$numbers[] = 5;
$numbers[] = 7;
$numbers[] = 14;

#var_dump($numbers);
#echo $numbers[3];

foreach ($numbers as $value)
{
	print $value * 2 . "<br>";

}


 ?>
</body>
</html>
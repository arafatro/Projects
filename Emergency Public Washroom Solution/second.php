
<!-- Database Connection -->
<?php
require 'db.php';
session_start();
?>
<!-- HTML START -->
<!DOCTYPE html>
<html >

<!-- HEADER -->
<head>
  <meta charset="UTF-8">
  <title>Washroom | Search</title>
  <link rel="stylesheet" href="css/custom1.css" type="text/css" media="screen"/>
</head>
<!-- HEADER END -->


<body>

<div class="form">
    <hr/>
	<div class="field-wrap">
	<?php
//assign search keyword
$search=$_POST['search'];

//sql query string preparation with the search keyword
$sql = "select * from location, address, washroom where (locationName LIKE '%$search%') and (location.locationID=address.locationID) and (address.addressID=washroom.addressID)order by washroom.WashroomQuantity desc LIMIT 0 , 10";

//assigning query result from database into $result variable
$result = $mysqli->query($sql);

$loc = -1;
$cnt=0;
//Showing result in table
echo '<h2 align="center">Washrooms</h2><hr />';
echo "<table border = 0>";
echo '<td><h2>Showing Results For ⟺ '.$search.' '.'</h2></td>';  
//start
echo '<table style="border:3px solid black;">
	<tr>
		<th style="border:3px solid black;">Street</th>
		<th style="border:3px solid black;">City</th>
		<th style="border:3px solid black;">Quantity</th>
	</tr>';
	while($row=$result->fetch_assoc())
{	echo '<tr>';
	echo '<td style="border:2px solid black;">'.$row['street'].'</td>';
	echo '<td style="border:2px solid black;">'.$row['city'].'</td>';
    echo '<td style="border:2px solid black; align:center;">'.$row['WashroomQuantity'].'</td>';
	echo '</tr>';
	$cnt++;
}	
	
echo '</table>';

//end



echo 'Results ⇒ '.$cnt; //printing result count


?> 
		  </div>
		  </div>
		  <br/>
</div>

</body>
</html>
<!-- HTML END -->

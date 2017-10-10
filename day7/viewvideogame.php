<?php

#Page header
$siteTitle = 'View Video Games Collection';
$siteName = 'View Video Games Collection.';
$siteDescription = 'Here you will find all my video-games.';

# Inkluderer header.php filen
include('includes/header.php');

# Opretter forbindelse til database
include('includes/connectdb.php');

$query = "SELECT publishers.publishername AS publishername, platforms.platformname AS platformname, videogames.title AS title, videogames.description AS description, videogames.price AS price FROM publishers INNER JOIN videogames ON publishers.id = videogames.publisherid INNER JOIN platforms ON videogames.platformid = platforms.id ORDER BY title";

# Udfører SQL-forespørgsel
$result =  mysqli_query($dbc, $query);

# Hvis SQL-forespørgslen udføres - så skal vi vise alle videospil
if ($result) 
{
?>   
    <!-- Table header -->
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
                <th>Publisher</th>
                <th>Platform</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
        <?php     
           #Henter alle rækker fra SQL-forespørgsel
            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
            {
        ?>   
            <tr>
                <td><?php echo $row['title']; ?></td>
                <td><?php echo $row['description']; ?></td>
                <td><?php echo $row['publishername']; ?></td>
                <td><?php echo $row['platformname']; ?></td>
                <td><?php echo $row['price']; ?></td>
            </tr>
        <?php    
            }   
        ?>    
           
        </tbody>
    </table><!-- SLUT på Table tag-->
<?php
    # Frigør (tømmer indholdet) i $result som er et array
    mysqli_free_result($result);
}
else
{
# Hvis SQL-forespørgslen (if) ikke er sand

echo '<p class="error">There is nothing to display!</p>';
    
# Viser fejlmeddl. såfremt SQL-forespørgsel fejler.
echo '<p>'. mysqli_error($dbc) . '<br>Query: ' . $query . '</p>';

} 

# Lukker database forbindelse
mysqli_close($dbc);

# Inkluderer footer.php
include('includes/footer.php');
?>


    
    
    
    
    
    
    
    
    
    

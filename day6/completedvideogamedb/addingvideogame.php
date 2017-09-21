<?php

#Page header
$siteTitle = 'Add videogame';
$siteName = 'Add videogame to collection.';
$siteDescription = '';

include('includes/header.php');

# Open database connection
include('includes/connectdb.php');

# Collecting all data from previous-page and creating variables
$titlename = $_POST['titlename'];
$description = $_POST['descriptionname'];
$price = $_POST['pricename'];
$platformid = $_POST['platformid'];
$publisherid = $_POST['publisherid'];

# Prepare SQL-query
$insertQuery = "INSERT INTO videogames(id, title, price, description, platformid, publisherid) VALUES(NULL, '$titlename', '$price', '$description', '$platformid', '$publisherid') ";

#Execute SQL-query
mysqli_query($dbc, $insertQuery) or die ('Error querying the database!');
?>

<div id="divspace" class="panel panel-default">
        <div class="panel-heading panel panel-success">Success...</div>
        <div class="panel-body">
            <h2>You have now added <?php echo $titlename; ?> to the videogame archive.</h2>
        </div><!--END panel-body -->
        <div class="panel-footer">
            <button class="btn btn-primary btn-block" onclick="goBack()" >Go Back
            </button>
        </div><!--END panel-footer-->
    </div><!--END divspace -->
<?php 

    #Close database-connection
    mysqli_close($dbc);
?>
   
<script>
    function goBack() {
        window.history.back();
    }
</script>
    
    
<?php include('includes/footer.php'); ?>

















<?php
/**
* Plugin Name: mywordpressplugin
* Plugin URI: http://www.kilic.dk
* Description: This is my first WordPress Plugin named - mywordpressplugin
* Version: 0.1
* Author: Das Kønig 
* Author URI: http://www.kilic.dk
* License: GPLv3
**/

function insert_into_db() {
    
    # This ($wpdb) is a wordpress variable which makes it possible to access the wordpress database and create tables inside it
    global $wpdb;
    # Creates a new table inside my existing wp-database if table not exists
    $table = $wpdb->prefix . "newplugin";
    # Setting wp-database charset
    $charset_collate = $wpdb->get_charset_collate();
    # Creating wp-table with SQL
    $sql = "CREATE TABLE IF NOT EXISTS $table (
    `id` MEDIUMINT NOT NULL AUTO_INCREMENT,
    `stagename` TEXT NOT NULL,
    `capacity` MEDIUMINT NOT NULL,
    `url` TEXT NOT NULL,
    UNIQUE (`id`)
    ) $charset_collate;";
    
    # Including or requiring a file
    require_once( ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);
    # Starts output buffering
    ob_start();
    ?>

<!-- Here i will create a HTML-Form  -->    
<form action="#v_form" method="post" id="v_form">
    <label for="stagename">
        <h3>Name of stage:</h3>
    </label>
    <input type="text" name="stagename" id="stagename" required>
     
    <label for="capacity">
        <h3>Max capacity:</h3>
    </label>
    <input type="number" min="1000" max="50000" name="capacity" id="capacity" required>
     
    <label for="url">
        <h3>Type MAP Location as URL:</h3>
    </label>
    <input type="url" name="url" id="url" required>
     
    <input type="submit" name="submit_form" value="submit">
</form> <!-- END HTML-Form -->

<?php
# Gets the current buffer contents and delete current output buffer
$html = ob_get_clean();
# Inserts data to the wp-database in case the HTML-form is filled out and submitted
if ( isset($_POST["submit_form"]) && $_POST["stagename"] != "" && $_POST["capacity"] != "") {
    $table = $wpdb->prefix."newplugin";
    $stagename = strips_tags($_POST["stagename"], "");
    $capacity = strips_tags($_POST["capacity"], "");
    $url = strips_tags($_POST["url"], "");
    $wpdb->insert(
        $table, 
        array(
            'stagename' => $stagename,
            'capacity' => $capacity,
            'url' => $url
        )
    );
    $html = "<p>The stage with following name <strong>$stagename</strong> was successfully added. Thanks!</p>";
    } 
    # outputs everuthing
    return $html;                
}

# adding a shortcode that can be used in Wordpress on either page or post: [insert-into-db]
add_shortcode('stage-form','insert_into_db');





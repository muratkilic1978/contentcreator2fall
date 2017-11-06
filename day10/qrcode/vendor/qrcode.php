<?php
# Setting the heading in PHP to image/png
header('Content-Type: image/png');

# include/require a specific file
require_once 'autoload.php';

# If condition checking if $_GET[text] isset
if(isset($_GET['text'])) {
    $size = isset($_GET['size']) ? $_GET['size'] :  500;
    $padding = isset($_GET['padding']) ? $_GET['padding'] : 50;
    
# creating a new Endroid object
$qr = new Endroid\QrCode\QrCode();

# Setting methods (text, size and padding)    
$qr->setText($_GET['text']);
$qr->setSize($size);
$qr->setPadding($padding);

# Generating QR Code with selected options    
$qr->render();

}
?>
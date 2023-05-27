<?php
include "qrcode.php"; 
// Create QRcode object 
$qc = new QRCODE(); 

// create text QR code 
$qc->URL('www.techiesbadi.in');; 

// render QR code
$qc->QRCODE(400,"URL.png");
?>
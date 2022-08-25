<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');  
 
require_once APPPATH."/third_party/fpdi/fpdi.php";
class FPDIS extends FPDI {
    public function __construct() {
        parent::__construct();
    }
}

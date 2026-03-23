<?php	
require_once "controllers/template.controller.php";

require_once "controllers/userrights.controller.php";
require_once "models/userrights.model.php";

require_once "controllers/clinicstaff.controller.php";
require_once "models/clinicstaff.model.php";

require_once "controllers/patientregistry.controller.php";
require_once "models/patientregistry.model.php";


$template = new ControllerTemplate();
$template -> ctrTemplate();
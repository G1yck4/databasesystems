<?php
require_once "../controllers/patientregistry.controller.php";
require_once "../models/patientregistry.model.php";

class patient{
  public $trans_type; 
  public $encodedby;
  public $firstname;
  public $lastname;
  public $mi;
  public $extension;
  public $nationality;
  public $gender;
  public $patientid;
  public $mobile;
  public $alternate;
  public $email;
  public $address;
  public $birthdate;

  public function savePatient(){
    $trans_type = $this->trans_type;
    $encodedby = $this->encodedby;
  	$firstname = $this->firstname;
  	$lastname = $this->lastname;
  	$mi = $this->mi;
    $extension = $this->extension;
  	$nationality = $this->nationality;
  	$gender = $this->gender;
  	$patientid = $this->patientid;
  	$mobile = $this->mobile;
  	$alternate = $this->alternate;
    $email = $this->email;
  	$address = $this->address;
    $birthdate = $this->birthdate;

    $data = array("firstname"=>$firstname,
    	            "lastname"=>$lastname,
                  "mi"=>$mi,
                  "extension"=>$extension,
                  "nationality"=>$nationality,
                  "encodedby"=>$encodedby,
                  "patientid"=>$patientid,
                  "mobile"=>$mobile,
                  "alternate"=>$alternate,
                  "gender"=>$gender,
                  "address"=>$address,
                  "email"=>$email,
                  "birthdate"=>$birthdate);

    if ($trans_type == 'New'){
      $answer = (new ControllerPatientRegistry)->ctrSavePatient($data);
      echo $answer;
    }else{
      $answer = (new ControllerPatientRegistry)->ctrEditPatient($data);
    }

  }
}

$save_patient = new patient();

$save_patient -> trans_type = $_POST["trans_type"];
$save_patient -> encodedby = $_POST["encodedby"];
$save_patient -> firstname = $_POST["firstname"];
$save_patient -> lastname = $_POST["lastname"];
$save_patient -> mi = $_POST["mi"];
$save_patient -> extension = $_POST["extension"];
$save_patient -> nationality = $_POST["nationality"];
$save_patient -> gender = $_POST["gender"];
$save_patient -> patientid = $_POST["patientid"];
$save_patient -> mobile = $_POST["mobile"];
$save_patient -> alternate = $_POST["alternate"];
$save_patient -> email = $_POST["email"];
$save_patient -> address = $_POST["address"];
$save_patient -> birthdate = $_POST["birthdate"];
$save_patient -> savePatient();
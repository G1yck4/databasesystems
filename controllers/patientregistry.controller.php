<?php
class ControllerPatientRegistry{
	static public function ctrSavePatient($data){
	   	$answer = (new ModelPatient)->mdlSavePatient($data);
		return $answer;
	}

	static public function ctrEditPatient($data){
	   	$answer = (new ModelPatient)->mdlEditPatient($data);
	}
}
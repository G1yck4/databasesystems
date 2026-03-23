<?php
class ControllerClinicStaff{
	static public function ctrSaveClinicStaff($data){
	   	$answer = (new ModelClinicStaff)->mdlSaveClinicStaff($data);
		return $answer;
	}

	static public function ctrEditClinicStaff($data){
	   	$answer = (new ModelClinicStaff)->mdlEditClinicStaff($data);
	}
}
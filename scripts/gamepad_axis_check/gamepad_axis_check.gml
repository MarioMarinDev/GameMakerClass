
function gamepad_axis_check(device, axisIndex){

	var value = gamepad_axis_value(device, axisIndex);

	if(abs(value) >= 0.5) {
		return sign(value);
	}
	
	return 0;
	
}

function gamepad_axis_check_pressed(device, axisIndex) {
	var value = gamepad_axis_value(device, axisIndex);
	var axis_pressed = false;
	switch(axisIndex) {
		case gp_axislh:
			axis_pressed = (variable_instance_exists(id, "_gp_axislh")) ? _gp_axislh : false;
		break;
		case gp_axislv:
			axis_pressed = (variable_instance_exists(id, "_gp_axislv")) ? _gp_axislv : false;
		break;
	}
	if(axis_pressed and abs(value) <= 0.25) {
		switch(axisIndex) {
			case gp_axislh:
				_gp_axislh = false;
			break;
			case gp_axislv:
				_gp_axislv = false;
			break;
		}
	} else if(!axis_pressed and abs(value) >= 0.5) {
		switch(axisIndex) {
			case gp_axislh:
				_gp_axislh = true;
			break;
			case gp_axislv:
				_gp_axislv = true;
			break;
		}
		return sign(value);
	}
	return 0;
}
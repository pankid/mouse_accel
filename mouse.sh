#!/bin/bash

if xinput | grep  'Kensington      Kensington Expert Mouse'
	then
	xinput --set-prop 'Kensington      Kensington Expert Mouse' 'Device Accel Constant Deceleration' 3.7

	xinput set-ptr-feedback  'Kensington      Kensington Expert Mouse' 3 11 5

	xinput --set-prop 'Kensington      Kensington Expert Mouse' 'Device Accel Profile' 4
fi

if xinput | grep 'Razer Razer DeathAdder'
	then
	xinput --set-prop 'Razer Razer DeathAdder' 'Device Accel Profile' 7
# first value is threashold for when to accelerate, 0 should turn aceleration off, then it is a fraction for what to acelerate to, 1 1 will set it to none. 
	xinput set-ptr-feedback  'Razer Razer DeathAdder' 0 1 1
	xinput --set-prop 'Razer Razer DeathAdder' 'Device Accel Constant Deceleration' 1.2

fi

#!/usr/bin/bash

Clock() {
	DATE=$(date "+%a %b %d, %T")
	echo -n "$DATE"
}

Battery() {
	BATPERC=$(acpi --battery | cut -d, -f2)
	echo "$BATPERC"
}

AlsaVolume() {
	VOLUME=$(amixer get Master | grep -o "[0-9].%")
	echo "$VOLUME"
}

Wifi() {
	SSID=$(iw dev | grep -o "ssid [0-9a-zA-Z]*\$")
	echo "$SSID"
}

while true; do
	echo "%{Fwhite}%{l}%{A:reboot:}%{A3:poweroff:} O %{A}%{A} %{A:urxvt -name float -e 'sudo wifi-menu':}WiFi: $(Wifi) %{A}%{c}%{B#90000000}$(Clock)%{r}%{A:urxvt -name float -e 'alsamixer':}Sound: $(AlsaVolume) %{A} Battery: $(Battery)"
	sleep 1;
done

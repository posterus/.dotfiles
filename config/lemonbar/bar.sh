#!/usr/bin/env bash
Battery() {
        BATPERC=$(acpi --battery | cut -d, --fields=2,3)
        echo "$BATPERC"
}

Time() {
	TIME=$(date +%Y-%m-%d)	
	echo -n "$TIME"
}

# Print the percentage
while true
do
	echo "%{l} $(Time) %{r} $(Battery)"
	sleep 1
done

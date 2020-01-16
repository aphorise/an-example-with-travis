#!/usr/bin/env bash

EXPECT="HELLO WORLD" ;
OUTPUT="$(bash hello-world.sh)" ;

MSG_GOOD="GREAT output as expected:\n${OUTPUT}\n\nPASSED\n"
MSG_BAD="ERROR unexpected output:\n${OUTPUT}\nWas expecting: ${EXPECTING}\n\nFAILED!\n"

if [[ ${OUTPUT} == ${EXPECT} ]] ; then
	printf "${MSG_GOOD}" ;
else
	printf "${MSG_BAD}" ;
	exit 1 ;
fi ;

#!/bin/bash
# Run RTLSDR_WSPRD for 20 meters
# rtlsdr_wsprd, a simple WSPR daemon for RTL receivers
#
# Use:	rtlsdr_wsprd -f frequency -c callsign -l locator [options]
# 	-f dial frequency [(,k,M) Hz], check http://wsprnet.org/ for freq.
#	-c your callsign (12 chars max)
#	-l your locator grid (6 chars max)
# Receiver extra options:
#	-g gain [0-49] (default: 29)
#	-a auto gain (default: off)
#	-o frequency offset (default: 0)
#	-p crystal correction factor (ppm) (default: 0)
#	-u upconverter (default: 0, example: 125M)
#	-d direct dampling [0,1,2] (default: 0, 1 for I input, 2 for Q input)
#	-n max iterations (default: 0 = infinite loop)
#	-i device index (in case of multiple receivers, default: 0)
# Decoder extra options:
#	-H use the hash table (could caught signal 11 on RPi)
#	-Q quick mode, doesn't dig deep for weak signals
#	-S single pass mode, no subtraction (same as original wsprd)
# Example:
#	rtlsdr_wsprd -f 144.489M -c A1XYZ -l AB12cd -g 29 -o -4200
#

echo Starting rtlsdr_wsprd
./rtlsdr_wsprd -f 14.0956M -c N6WXD -l DM12lw -a 1 -d 2


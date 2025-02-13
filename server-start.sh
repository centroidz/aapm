#!/data/data/com.termux/files/usr/bin/sh
mariadbd-safe &
apachectl -k start

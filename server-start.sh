#!/data/data/com.termux/files/usr/bin/sh
apachectl -k start
mariadbd-safe &

echo "press enter to continue..."

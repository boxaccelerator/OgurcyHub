@echo off
title Ogurcy v3.0.1 - Cache Cleaner
color 3
echo Cleaning...
cd .\content
rmdir /S /Q cache
echo Cleaned.
exit
@echo off
:: Script: Ops 201 Class 08 Ops Challenge Solution
:: Author: Connie Uribe Chavez
:: Date of lates revision: 15 Feb 2023
:: Purpose: Backups everything from the user's desktop to an external E drive

:: Main

robocopy C:\Users\j.thompson\Desktop E: \MIR
shutdown -s -t 30



:: End
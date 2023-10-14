# XFoil-classic Makefile

PROJPATH  	:= $(PWD)
PROJNAME	:= $(notdir$(PROJPATH))
APPNAME		:= "xfoil"

MK		:= ./mk

include $(MK)/*.mk

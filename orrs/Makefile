INSTALLDIR	:= ~/bin

.PHONY: orrs-prep
orrs-prep:
	sed s/REAL\*4/REAL/1 src/osmap.f
	sed s_/home/codes/orrs_$(INSTALLDIR)_1 src/osmap.f

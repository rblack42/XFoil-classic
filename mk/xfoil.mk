# Make targets for building XFoil 6.99

XFMASTER = https://web.mit.edu/drela/Public/web/xfoil/xfoil6.99.tgz


.PHONY:	fetch
fetch:  ## Fetch master code from MIT
	mkdir -p master && cd master && \
		wget $(XFMASTER) && \
		tar zxvf xfoil6.99.tgz


.PHONY:  orrs-prep
orrs-prep:	## create **orrs** directory and prepare for compile
	mkdir -p orrs/src && \
	cp master/Xfoil/orrs/src/*.f orrs/src

OSRCS = osgen.f \
		orrs.f \
		ospres.f \
		pfplot.f \
		fscorr.f \
		fsrun.f \
		fs.f \
		io.f \
		intai.f \
		mappl1.f \
		ncorr.f \
		osmap.f \
		osrun.f \
		osseq.f \
		roll.f \
		otest.f \
		osweep.f \
		spline.f \
		conlab.f \
		plutil.f \
		ask1.f \
		userio.f \
		getarg0.f

OOBJS = $(OSRCS:.f=.o)
FC		:= gfortran
FFLAGS	:= -O -std=legacy

%.o:	%.f
	$(FC) $(FFLAGS) -c $< $@

.PHONY: orrs-compile
orrs-compile:	$(OOBJS)


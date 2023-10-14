# Make targets for building XFoil 6.99

XFMASTER = https://web.mit.edu/drela/Public/web/xfoil/xfoil6.99.tgz


.PHONY:	fetch
fetch:  ## Fetch master code from MIT
	mkdir -p master && cd master && \
		wget $(XFMASTER) && \
		tar zxvf xfoil6.99.tgz



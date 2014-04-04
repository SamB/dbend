
all: dbend.dvi

%.dvi: %.2602gf
	gftodvi $<

%.2602gf: %.mf
	mf -interaction scrollmode $<

clean:
	rm -f dbend.*gf dbend.dvi

# don't delete intermediates
.SECONDARY:

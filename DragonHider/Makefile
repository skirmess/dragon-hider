
.PHONY: clean tag release

VERSION=4

clean:
	rm -f *~

tag: clean
	cvs tag DragonHider-$(VERSION)

release: clean
	( cd ..;							\
		rm -f DragonHider-$(VERSION).zip;			\
		find DragonHider					\
				-name CVS -prune -o			\
				-name .svn -prune -o			\
				-name Makefile -prune -o		\
				-name '.*.swp' -prune -o		\
				-print					\
		| zip -@ DragonHider-$(VERSION).zip;			\
	)	

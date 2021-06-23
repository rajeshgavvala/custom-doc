SPHINXAUTOBUILD = sphinx-autobuild

ALLSPHINXLIVEOPTS   = $(ALLSPHINXOPTS) -q \
   -p 0 \
   -H 0.0.0.0 \
   -B \
   --delay 1 \
   --ignore "*.swp" \
   --ignore "*.pdf" \
   --ignore "*.log" \
   --ignore "*.out" \
   --ignore "*.toc" \
   --ignore "*.aux" \
   --ignore "*.idx" \
   --ignore "*.ind" \
   --ignore "*.ilg" \
   --ignore "*.tex" \
   --watch source

.PHONY: livehtml
livehtml:
   $(SPHINXAUTOBUILD) -b html $(ALLSPHINXLIVEOPTS) $(BUILDDIR)
   @echo
   @echo "Build finished. The HTML pages are in $(BUILDDIR)."
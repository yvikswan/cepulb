talk:

	sed -i.bak -f visible.scr index.qmd
	quarto render index.qmd
	Rscript -e 'knitr::purl("index.qmd")'
	git add index_files

short:

	sed -i.bak -f hidden.scr index.qmd
	quarto render index.qmd
	Rscript -e 'knitr::purl("index.qmd")'
	git add index_files

chrome:

	@open -a Google\ Chrome.app index-speaker.html

present:

	@open -a RStudio.app R_scripts_data/fda.la.Rd R_scripts_data/manipulate_mfbm.R R_scripts_data/gamma_persp3d.R
#	@open -a Brave\ Browser.app index-speaker.html
	@open -a Google\ Chrome.app index-speaker.html
#	@open -a Firefox.app index-speaker.html
	@clear
	@echo "Presentation Tips"
	@echo " "
	@echo "- Cmd-F1 to mirror/unmirror external display (first plug in external display)"
	@echo "- Ctrl-Cmd-F for fullscreen of apps (“Fullscreen”)"
	@echo "- Ctrl-Cmd-G for moving an app to external display (“Go”)"
	@echo " "
	@echo "In revealjs presentation"
	@echo " "
	@echo "Z - Zoom"
	@echo "E - Export to PDF"
	@echo "F - Fullscreen"
	@echo "B - Blackboard"
	@echo "C - Crayon"
	@echo " "
	@echo "Start speaker view, push slides to external display (safest venue option) "

clean: 

	rm -rf index_files index_cache *~ *.bak

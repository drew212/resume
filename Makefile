.PHONY: pdf

pdf: drew_resume.pdf

.PHONY: ps

ps: drew_resume.ps

.PHONY: web

web: resume_web.pdf

drew_resume.pdf : drew_resume.tex
	rubber --pdf drew_resume.tex

drew_resume.ps : drew_resume.tex
	rubber --ps drew_resume.tex


resume_web.pdf: resume_web.tex
	rubber --pdf resume_web.tex

clean:
	rubber -d --clean resume_web.tex
	rubber -d --clean drew_resume.tex
	rubber -ps --clean drew_resume.tex

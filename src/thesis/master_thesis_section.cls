\NeedsTeXFormat{LaTeX2e}

% the name if the new class I created
\ProvidesClass{master_thesis_section}[2022/05/08 TLU Master Thesis Proposal]

% Load an existing class as the base
\LoadClass[12pt, a4paper]{article}

\setlength{\parindent}{0cm}

\RequirePackage[left=20mm, right=20mm, top=25mm, bottom=25mm]{geometry}

\RequirePackage[]{times}
\RequirePackage{graphicx}

% Use biblatex for references - change style= as appropriate
% needed to switch to backend=bibtex and then back to biber
\RequirePackage[natbib=true,backend=biber,sorting=nyt,style=apa]{biblatex}
\renewcommand*{\bibfont}{\fontsize{10}{12}\selectfont}
% add your references to this file
\addbibresource{refs.bib}

% custom command for listing research questions
\newcounter{questionCounter}
\newenvironment{RQlist}
{\begin{list}
	{\textbf{RQ\arabic{questionCounter}:}}
	{\usecounter{questionCounter}}
}
{\end{list}}
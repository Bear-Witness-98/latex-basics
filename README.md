# Latex tutorial repo

Repo where I learn the basics of compiling latex from command line, in my local machine

This presents a series of advantages in resources available for compilation (less compile time)
and do not have time compilation limits.

The first thing I did was to download the MikTex program.
This is a program that has a lot of command line functions to compile,
use, personalize and update latex files. This thing was donloaded from here:

**https://miktex.org/download**

This downloaded a drag-n-drop installation file for mac.

Then, installed the file, and followed the instructions here:
**https://miktex.org/howto/instatll-miktex-mac**. Specifically:

1. Install the program user-wide and not system-wide. This only
allows me (santiagosuarez) to use all the stuff there.
But beware, as this installs all features of these program in the
~/bin directory, which is not usually included in the PATH env variable.
(Don't know why though). So:
2. Add ~/bin to the PATH variable, so that the terminal properly
recognizes the commands.
3. When running a compilation process, there are a few things in the dark.
Some random log files are generated, that may or may not be of help, and
when a package is missing, a GUI pop up appears and asks if I want
to install said package. This would be better to have directly in the 
terminal with a [yes/no] prompt rather than on a GUI. 
4. The references in the example paper I was using were inexistent. No figure got its proper name. Maybe this is from a package version (or whatever)
error, or that maybe the some references didn't get properly linked 
with compiler directives.
Though, I would think that this would be more of the packages, because the
references to images in the file itself were missing. Need to investigate
further.

--

exploring new things, I got the following:

1. There are imports in the heading of the .tex file that do not correspond exactly to a package.
Because I cannot find them on miktex pakcage manager.
2. Te bibliography of the document did not appear, I search first the firts issue, which did
not appear to be such a problem afterall, and then I found that for the bibliography compilation
you should do:
- pdfLatex myFile.tex
- bibtex myFile.aux
- pdfLatex myFile.tex
- pdfLatex myFile.tex

Now, the question is why?
This is simmilar to the two-step compilation for assembler. The links stay opened
in the first compilation, and a table with values gets constructed. Then, in the second
compilation, the table is put on the document.

Read: https://www.overleaf.com/learn/latex/Choosing_a_LaTeX_Compiler

Same here: https://tex.stackexchange.com/questions/204291/bibtex-latex-compiling
It appears it is a kind of reference managing.

As in: https://stackoverflow.com/questions/2461905/compiling-latex-bib-source

You need to compile the bibtex file.

Suppose you have article.tex and article.bib. You need to run:

latex article.tex (this will generate a document with question marks in place of unknown references)
bibtex article (this will parse all the .bib files that were included in the article and generate metainformation regarding references)
latex article.tex (this will generate document with all the references in the correct places)
latex article.tex (just in case if adding references broke page numbering somewhere)

I think this would be enough to compile "mostly" anything I need.

The next steps would be to get the basic structure on latex language. What each package do, and how the compilation is transcribed to pdf, but that should be pretty hardcore.

Maybe with the structure is enough.

The data is here: https://en.wikibooks.org/wiki/LaTeX/Document_Structure

Full notes here: https://en.wikibooks.org/wiki/LaTeX

The four commands listed above "should" be combined with the command:
`latexmk -pdf file.tex`

More explanation on the why of the bibliography compilation
https://en.wikibooks.org/wiki/LaTeX/Bibliography_Management



# Notes for latex compilation with what I already had

I already did some tests with compiling latex files from the command line.

For that, I installed MikTex, from some minor research I did. From sth
I saw now, maybe the best option for MacOS is MacTex, but I'll continue
with MikTex for now, as the I already have it.

Some cli tools are already installed, like `pdfLatex` and `bibtex`, though
I'm not sure if those are all, or where the libraries are installed.

I see now that MikTex is specially used for windows (damn?). And the
ecosystem is not that clear on which one to use, though some are promplty
shown in `https://www.overleaf.com/learn/latex/Choosing_a_LaTeX_Compiler`.

I was searching more a simple command line set of tools, which I could use
consiously for the compilation and library management, but I think I will
not scape from GUI stuff for now. I'll go with miktex and deal with it.
The installation issues are explained in the previous notes.

On these things, I think the package management is done by the distro, so
will also deal with it in due time.

Now I will try to set up a simple document to compile with the distro
I have, understand the workflows of the distro, and then, continue with
this tutorial/revision for latex `https://www.overleaf.com/learn/latex/Free_online_introduction_to_LaTeX_(part_1)`.
To go over a review of how it works (as I didn't use it for quite some time)
now.

I didn't register how to properly compile a latex file in my previous experiment, but I used a
`compile.sh` script where I defined a command line function to compile a latex file. Will start
with that, and copy it to this new directory.

No understanding of the Latex compiler distro distribution was done, will just use the cli
available

Write .tex files, and compile it with the commands documented, fine without libs

To install a lib (using miktex):
1. start miktex console (from launchpad in MacOS)
2. click packages
3. sort the list view by column Installed on to make the following easy
4. select the packages which are not installed
5. click the add button to start the installation

This happend with amsmath, but just because I am somewhat dislexic, and wrote asmath
everywhere.

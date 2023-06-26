$pdflatex = "lualatex -shell-escape -interaction=nonstopmode -file-line-error %O %S";
sub mma {return system("mma2tex-exe '$_[0]'");}
add_cus_dep("m","tex",0,"mma");

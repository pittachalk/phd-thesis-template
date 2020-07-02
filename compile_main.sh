# for this to work, make sure that the first documentclass in thesis.tex is uncommented 

# clean up first
bash ./compile.sh clean

# compile final thesis again
bash ./compile.sh compile "thesis"

# copy into output directory
mkdir out/
cp thesis.pdf out/main.pdf
bash ./compile.sh clean
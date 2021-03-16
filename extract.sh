set -e

# Extract artifact
if [ -f "soduco-py37-0.1.1-Linux.tar.gz" ]; then

tar xf soduco-py37-0.1.1-Linux.tar.gz

# Move files to correct folders
mv soduco-py37-0.1.1-Linux/lib/* lib
mv soduco-py37-0.1.1-Linux/back/soducocxx.cpython-37m-x86_64-linux-gnu.so back

# Remove tar archive and empty folder
rm -r soduco-py37-0.1.1-Linux && rm soduco-py37-0.1.1-Linux.tar.gz

fi

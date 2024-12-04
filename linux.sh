echo "@@ Accessing the folder .."
mkdir pubpal

sudo apt update

if ! command -v node &> /dev/null; then
    echo "@@ Node.js is required." 
    sudo apt install -y nodejs
else
    echo "@@ Node.js is already installed."
fi

if ! command -v npm &> /dev/null; then
    echo "@@ NPM is required." 
    sudo apt install -y npm
else
    echo "@@ NPM is already installed."
fi

echo "@@ Initializing npm"
npm init -y

if ! command -v ionic &> /dev/null; then
    echo "@@ IONIC is required." 
    sudo npm install -g @ionic/cli
else
    echo "@@ IONIC is already installed."
fi
ionic -h

# ionic start
# Angular
# pubpal
# tabs or ..
# NgModules

echo "@@ Accessing the folder"
cd pubpal
echo "@@ Running Server"
ionic serve
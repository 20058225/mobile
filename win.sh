#!/bin/bash

echo "@@ Accessing the folder .."
mkdir -p pubpal
cd pubpal || exit 1

# Node.js Installation Check
echo "@@ Checking for Node.js"
if ! command -v node &> /dev/null; then
    echo "@@ Node.js is required. Please install it from https://nodejs.org/"
    exit 1
else
    echo "@@ Node.js is already installed."
fi

# Update npm to the latest version
echo "@@ Updating npm"
npm install -g npm

# Install Angular CLI
echo "@@ Installing Angular CLI"
if ! command -v ng &> /dev/null; then
    npm install -g @angular/cli
else
    echo "@@ Angular CLI is already installed."
fi

# Install Ionic CLI
echo "@@ Installing Ionic CLI"
if ! command -v ionic &> /dev/null; then
    npm install -g @ionic/cli
else
    echo "@@ Ionic CLI is already installed."
fi

# Start the Ionic Server
echo "@@ Running Server"
ionic serve
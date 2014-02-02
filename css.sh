#!/bin/bash

echo "Install Sass and Compass..."
sudo apt-get install ruby1.9.1
sudo gem install sass
sudo gem install compass

echo "Finish!"
echo "Use: compass --watch [dir]"

# Sudon't
Don't `sudo`.

This project is meant to make CLI tools faster to access.   
It removes `sudo` and also makes the CLI tool name shorter.   
For example, `sudo pacman` -> `pac`.

## Installation
To install Sudon't, you will need `git`, here is what you need to run:
```
# Clone the repository
git clone https://github.com/UisNotUnix/sudont.git ~/.sudont

# Make the pre-built CLI tools executable
chmod +x ~/.sudont/bin/*

# Add to PATH
echo 'export PATH="$HOME/.sudont/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```
You can do it in a chain, like this:
```
git clone https://github.com/UisNotUnix/sudont.git ~/.sudont && chmod +x ~/.sudont/bin && echo 'export PATH="$HOME/.sudont/bin:$PATH"' >> ~/.bashrc && source ~/.bashrc
```
### Updating
If i add new utils, it is recommended to update. Here is how to do it:
```
# Update the repository files
cd ~/.sudont
git pull

# Make everything executable again
chmod +x ~/.sudont/bin/*
```
And again, you can do it in a chain, like this:
```
cd ~/.sudont && git pull && chmod +x ~/.sudont/bin/*
```

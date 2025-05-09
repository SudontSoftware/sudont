# Sudon't
Dont `sudo`.

This project is meant to make CLI tools faster to access.   
It removes `sudo` and also makes the CLI tool name shorter.   
For example, `sudo pacman` -> `pac`.

## Dependencies
- OpenDoas (`doas`)

## Installation
To install Sudon't, you will need `git`, here is what you need to run:
```
# Clone the repository
git clone https://github.com/UisNotUnix/sudont.git ~/.sudont

# Ensure Doas is installed, and add the wheel group to the permissions file
sudo pacman -S --needed doas
sudo echo "permit setenv {PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin} :wheel" >> /etc/doas.conf

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

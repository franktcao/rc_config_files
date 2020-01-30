#!bin/bash


#######################################################################
# Customizations
#######################################################################

# Message to show where it is reading from
echo "READING FROM ~/.bash_profile"

# Gives colors to terminal
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Aliases
alias gedit="open -a gedit"
alias ssh="ssh -Y"
alias ll="ls -l"
alias rbq="root -l -b -q"

test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Definitions
export ROOTDEV='/Users/franktcao/local/Rootdev'
# Needed to read in json files into python scripts
export LANG=en_US.UTF-8

# Set command line to behave like vim
#set -o vi
export INPUTRC=~/.inputrc

# Auto fill symbolic linked directories with backslash at the end
bind 'set mark-symlinked-directories on'



#######################################################################
# Binary paths
#######################################################################

# Default
export PATH="/bin"
export PATH="/usr/bin:$PATH"

# Mac OSX path
#export PATH="/sbin:$PATH" # Some things not in here
export PATH="/sbin:$PATH"
export PATH="/usr/sbin:$PATH"

# My installations
export PATH="/Users/franktcao/local/bin:$PATH"
export PATH="$ROOTDEV/bin:$PATH"
#
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/qt/bin:$PATH"
#export PATH="/usr/local/opt/llvm/bin:$PATH"

# Brew installed binaries
export PATH="/usr/local/Cellar/make/4.2.1_1/bin:$PATH"
export PATH="/usr/local/Cellar/llvm/7.0.1/bin:$PATH"
export PATH="/usr/local/Cellar/cmake/3.13.4/bin:$PATH"
export PATH="/usr/local/Cellar/gpp/2.25/bin/:$PATH"
export PATH="/usr/local/Cellar/gcc/8.3.0/bin:$PATH"
export PATH="/usr/local/Cellar/root/6.16.00/bin:$PATH"
export PATH="/usr/local/Cellar/python/3.7.5/bin:$PATH"



# Latex
export PATH="/Library/TeX/texbin:$PATH"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# MacPorts Installer addition on 2015-09-25_at_15:30:45: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# For user-installed bins
export PATH="/Users/franktcao/.local/bin:${PATH}"

# For google cloud's api
export PATH="/Users/franktcao/local/google-cloud-sdk/bin:${PATH}"

# For PyTorch
export PATH="/Users/franktcao/Library/Python/2.7/bin:${PATH}"

#######################################################################
# Library paths
#######################################################################

# Local installs
export DYLD_LIBRARY_PATH="/Users/franktcao/local/lib:$DYLD_LIBRARY_PATH"
export LD_LIBRARY_PATH="/Users/franktcao/local/lib:$LD_LIBRARY_PATH"

# PMT analyses
export LD_LIBRARY_PATH="$ROOTDEV/lib:$LD_LIBRARY_PATH"
export LIBPATH="$ROOTSYS/lib:$LIBPATH"
export LD_LIBRARY_PATH="ROOTSYS/lib:$LD_LIBRARY_PATH$"
export SHLIB_PATH="$ROOTSYS/lib:$SHLIB_PATH"
export DYLD_LIBRARY_PATH="$ROOTSYS/lib"

#######################################################################
# Manual paths
#######################################################################

# MacPorts Installer addition on 2018-12-07_at_14:17:15: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH="/opt/local/share/man:$MANPATH"
# Finished adapting your MANPATH environment variable for use with MacPorts.


#######################################################################
# Conda stuff
#######################################################################

# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
        conda config --set auto_activate_base False
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

# Gets rid of (base) thing in the PS1



#######################################################################
# Setting C/++ compilers
#######################################################################

# Aliases
###alias gcc='gcc-8'
##alias cc='gcc'
##alias g++='gcc'
##alias c++='gcc'
##alias cpp='gcc'
##export CC=gcc
##export CXX=gcc
export CC=clang
export CXX=clang++
#export LDFLAGS="-L/usr/local/opt/llvm/lib:$LDFLAGS"
#export CPPFLAGS="-I/usr/local/opt/llvm/include:$CPPFLAGS"

# Flags 
export LDFLAGS="-L/usr/local/Cellar/llvm/7.0.1/lib"
#export CPPFLAGS="-I/usr/local/Cellar/llvm/7.0.1/include/c++/v1"
export CPPFLAGS="-I/usr/local/Cellar/gcc/8.3.0/include/c++/8.3.0"
#export DYLD_LIBRARY_PATH=/usr/local/Cellar/root/6.16.00/bin/root /lib


#######################################################################
# Google Cloud API
#######################################################################
export GOOGLE_APPLICATION_CREDENTIALS='/Users/franktcao/local/google-cloud-sdk/kaggle_test-1af29a25cb7f.json'



#######################################################################
# Extra stuff 
#######################################################################


# export PATH=/usr/bin:/usr/sbin:/bin:/usr/local/bin:/sbin:/opt/x11/bin:$PATH
# export PATH=/root:/root/bin:$PATH
##export PATH="/Applications/root_v6.04.00/bin:/Applications/root_v6.04.00:$PATH:"
#export PATH="/opt/jlab_software/1.2/Darwin_macosx10.10-x86_64-gcc4.2.2/gemc/2.2/source:$PATH:"
#export PATH="$PATH:/Applications/gemc.app/gemc.app/Contents/MacOs"
#source /Applications/root_v6.04.00/bin/thisroot.sh
##

##
# Your previous /Users/franktcao/.bash_profile file was backed up as /Users/franktcao/.bash_profile.macports-saved_2013-01-30_at_13:58:49
##
##
# Your previous /Users/franktcao/.bash_profile file was backed up as /Users/franktcao/.bash_profile.macports-saved_2013-01-30_at_14:19:53
##

##
# Your previous /Users/franktcao/.bash_profile file was backed up as /Users/franktcao/.bash_profile.macports-saved_2015-09-25_at_15:30:45
##

# ROOT
#export ROOTSYS=/Users/franktcao/local
#export ROOTSYS=/usr/local/Cellar/root/6.16.00/bin
#export PATH=$ROOTDEV:$PATH
#export PATH=/Users/franktcao/local:$PATH
#export PATH="/usr/local/Cellar/:$PATH"

#alias gemc="open -a /Applications/gemc-2.2.app"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

# CONDA
export PATH="$HOME/anaconda3/bin:$PATH"

#DensePose Dependencies
COCOAPI=/Users/franktcao/workspace/machine_learning/cocoapi
DENSEPOSE=/Users/franktcao/workspace/machine_learning/DensePose


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/franktcao/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/franktcao/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/franktcao/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/franktcao/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

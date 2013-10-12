# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc

export BKP_DIR=/media/BKP
export POG_DIR=$BKP_DIR/POG
export PYTHON_POG_DIR=$POG_DIR/Python
export C_CPP_POG_DIR=$POG_DIR/C_CPP
export DOCUMENTOS_DIR=$BKP_DIR/Documentos
export DOWNLOADS_DIR=$BKP_DIR/Downloads
export ANDROID_SDK=$BKP_DIR/local/share/android-sdk
ANDROID_TOOLS=$ANDROID_SDK/tools
ANDROID_PLATFORM_TOOLS=$ANDROID_SDK/platform-tools

export PATH=$PATH:$BKP_DIR/local/bin:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS


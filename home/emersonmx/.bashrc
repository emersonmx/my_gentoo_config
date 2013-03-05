# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
export BKP_DIR=/media/BKP
export POG_DIR=$BKP_DIR/POG
export PYTHON_POG_DIR=$POG_DIR/Python
export C_CPP_POG_DIR=$POG_DIR/C_CPP
export DOCUMENTOS_DIR=$BKP_DIR/Documentos
export DOWNLOADS_DIR=$BKP_DIR/Downloads

export PATH=$PATH:$BKP_DIR/scripts

#!/bin/bash

set -e
trap 'exit_error $LINENO' ERR
exit_error() {
    echo "Error in line $1"
}

DIR=$PWD
PATCHDIR=$DIR/patches
BUILDDIR_GTK=$DIR/build_gtk
BUILDDIR_WS=$DIR/build_ws
DEBDIR=$DIR/deb
DISTDIR=$DIR/dist
DISTFILES="wireshark-gtk_2.6.8-1.1_amd64.deb libgtk-3-0_3.24.5-1_amd64.deb"

echo "* Installing all required packages"
sudo apt build-dep -y gtk+3.0
sudo apt build-dep -y wireshark-gtk
sudo apt install -y devscripts

echo "* Preparing deb and dist directory"
mkdir -p $DEBDIR
mkdir -p $DISTDIR

echo "* Building libgtk-3-0"
mkdir -p $BUILDDIR_GTK
cd $BUILDDIR_GTK
apt source gtk+3.0
cd gtk+3.0-3.24.5
patch -p1 < $PATCHDIR/ct_raspion_gtk+3.0-3.24.5.patch
echo "* debuild for gtk+3.0 requires sudo"
sudo debuild -i -us -uc -b

echo "* Building wireshark-gtk"
mkdir -p $BUILDDIR_WS
cd $BUILDDIR_WS
apt source wireshark-gtk
cd wireshark-2.6.8
patch -p1 < $PATCHDIR/ct_raspion_wireshark-gtk-2.6.8.patch
patch -p1 < $PATCHDIR/ws-trainer_wireshark-gtk-2.6.8.patch
debuild -i -us -uc -b

echo "* Cleaning up"
cd $DIR
mv $BUILDDIR_GTK/*.deb $DEBDIR
mv $BUILDDIR_WS/*.deb $DEBDIR
cd $DEBDIR
cp $DISTFILES $DISTDIR

echo "* Finished"
echo "*  Dir $DISTDIR contains the relevant deb files"
echo "*  Dir $BUILDDIR_GTK and $BUILDDIR_WS can be deleted"

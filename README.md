# Wireshark Online Trainer (ws-trainer)

**Overview**

Wireshark-GTK can run in a Web browser using a Broadwayd server. This can be useful for online training on how to use Wireshark.

However, some small patches are needed both for GTK and Wireshark. These patches are described in the German c't magazine 1/2020:

[c’t-Raspion: Datenpetzen finden und bändigen](https://www.heise.de/ct/ausgabe/2020-1-c-t-Raspion-Datenpetzen-finden-und-baendigen-4611153.html)

[c't-Raspion: Projektseite – Foren weitere Hinweise](https://www.heise.de/ct/artikel/c-t-Raspion-Projektseite-4606645.html)

This repository contains a build environment to compile GTK and Wireshark with the patches developed by c't.

**Prerequisits**

- Debian Buster 64bit system
- At least 8 GB of free disk space

**Build HOWTO**

- Download the repository to a folder
- Configure sudo for the given user
- Execute the script build.sh
- Approve the installation of additional packages, if necessary
- Wait and grab 1, 2, or many more cups of coffee
- The compilation should complete sucessfully
- The requered deb files can finally be found in the directory dist/

**References**

An earlier version of the build script can be retrieved from:

```
git clone https://github.com/zeya117/Wireshark-GTK-Uebungsumgebung.git
```


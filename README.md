# Wireshark Online Trainer (ws-trainer)

**Overview**

Wireshark-GTK can run in a Web server using a Broadwayd server. This can be useful for online training on how to use Wireshark, as only a Web browser is needed.

ws-trainer has been developed for preparing [lab experiments](https://www.ktlab.de) at [Hochschule Esslingen - University of Applied Sciences](https://www.hs-esslingen.de). 

This solution requires some small patches both for GTK and Wireshark. These patches are described in the German c't magazine 1/2020:

[c’t-Raspion: Datenpetzen finden und bändigen](https://www.heise.de/ct/ausgabe/2020-1-c-t-Raspion-Datenpetzen-finden-und-baendigen-4611153.html)

[c't-Raspion: Projektseite – Foren weitere Hinweise](https://www.heise.de/ct/artikel/c-t-Raspion-Projektseite-4606645.html)

This repository contains a build environment to compile GTK and Wireshark with the patches developed by c't.

Any feedback or suggestions? Please reach out to michael.scharf@ktlab.de!

**Prerequisits**

- Debian Buster 64bit system
- At least 8 GB of free disk space

**Build HOWTO**

- Download the repository to a folder
- Configure sudo for the given user
- Execute the script build.sh
- Wait and grab 1, 2, or many more cups of coffee
- The compilation should complete sucessfully
- The deb files required for installation can finally be found in the directory dist/

**References**

An earlier version of the build script can be retrieved from: https://github.com/zeya117/wshark

The original code from the c't project is published at: https://github.com/ct-Open-Source/ctraspion

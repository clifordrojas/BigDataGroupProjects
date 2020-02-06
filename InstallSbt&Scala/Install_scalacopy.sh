#!/usr/bin/env bash
echo "Installing Scala 2.11.8..."
cd /opt/
sudo wget www.scala-lang.org/files/archive/scala-2.11.8.deb
sudo dpkg -i scala-2.11.8.debgit
echo "Scala 2.11.8 Installed."
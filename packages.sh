#!/bin/sh

apt update
apt install -y -V ca-certificates lsb-release wget
wget https://apache.jfrog.io/artifactory/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb
apt install -y -V ./apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb
apt update

# I'm installing deps explicitly because of this issue
# https://github.com/apache/arrow/issues/35292
apt install -y -V libarrow-acero1400 libarrow-glib1400 gir1.2-arrow-1.0
apt install -y -V libarrow-dev                 # For C++
apt install -y -V libarrow-glib-dev            # For GLib (C)
apt install -y -V libarrow-dataset-dev         # For Apache Arrow Dataset C++
apt install -y -V libarrow-dataset-glib-dev    # For Apache Arrow Dataset GLib (C)
apt install -y -V libarrow-acero-dev           # For Apache Arrow Acero
apt install -y -V libarrow-flight-dev          # For Apache Arrow Flight C++
apt install -y -V libarrow-flight-glib-dev     # For Apache Arrow Flight GLib (C)
apt install -y -V libarrow-flight-sql-dev      # For Apache Arrow Flight SQL C++
apt install -y -V libarrow-flight-sql-glib-dev # For Apache Arrow Flight SQL GLib (C)

# I'm installing deps explicitly because of this issue
# https://github.com/apache/arrow/issues/35292
apt install -y -V libadbc-driver-sqlite009 libadbc-driver-snowflake009
apt install -y -V libadbc-driver-sqlite-dev
apt install -y -V libadbc-driver-snowflake-dev

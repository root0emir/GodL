#!/usr/bin/env bash

## Script to perform several important tasks before `mkarchcraftiso` create filesystem image.

set -e -u

## -------------------------------------------------------------- ##

## lsb-release
rm /etc/lsb-release
touch /etc/godlevel-lsb-release
ln -s /etc/godlevel-lsb-release /etc/lsb-release
cat > "/etc/lsb-release" <<- _EOF_
	DISTRIB_ID="God Level"

	DISTRIB_RELEASE="rolling"
	DISTRIB_DESCRIPTION="God Level Arch"

_EOF_

## -------------------------------------------------------------- ##

## /etc/os-release
rm /etc/os-release
touch godlevel-os-release
ln -s /etc/catos-os-release /etc/os-release
cat > "/etc/os-release" <<- _EOF_
	NAME="God Level"
	PRETTY_NAME="God Level Arch"
	ID=arch
	BUILD_ID=rolling
	ANSI_COLOR="38;2;23;147;209"
	HOME_URL="https://godlevelarch.github.io/"
	LOGO=arch

_EOF_

## -------------------------------------------------------------- ##

## -------------------------------------------------------------- ##

## /etc/issue
rm /etc/issue
touch /etc/godlevel-issue
ln -s /etc/godlevel-issue /etc/issue
cat > "/etc/issue" <<- _EOF_
	God Level Arch \r (\l)

_EOF_

## -------------------------------------------------------------- ##

## -------------------------------------------------------------- ##

## /etc/motd
rm /etc/motd
touch /etc/catos-motd
ln -s /etc/catos-motd /etc/motd
cat > "/etc/motd" <<- _EOF_

Welcome To God Level Arch

_EOF_


#!/bin/bash

rsync --rsync-path="sudo rsync" -zav masonm.org:{/var/www,/etc/nginx} .

#!/bin/sh

# exit script on any error
set -e

exec supervisord --nodaemon --configuration /etc/supervisor/supervisord.conf
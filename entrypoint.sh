#!/bin/bash

set -e

# cronサービスを起動
service cron start

exec "$@"

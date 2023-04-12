#!/bin/bash

echo "=> Start the server"
exec /usr/local/bin/gosu cloudron:cloudron python3 /app/code/app.py

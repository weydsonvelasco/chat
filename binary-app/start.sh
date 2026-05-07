#!/bin/bash

echo "<h1>EX288 se continuar assim viro devops de verdade</h1>" > /tmp/app/index.php

php -S 0.0.0.0:8080 -t /tmp/app

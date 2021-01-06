#!/bin/bash

set -euo pipefail

# Set a random root password
declare password
password=$(pwgen --ambiguous)
echo "Your root password is: $password"
sed -i "s|root::|root:$(openssl passwd -5 -noverify -stdin <<<$password):|" "$TARGET_DIR/etc/shadow"
unset password

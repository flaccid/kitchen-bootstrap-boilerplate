#! /bin/sh -e

echo 'Hello, world!' > /root/helloworld.txt

# if we get this far, lets do some tests
# https://github.com/test-kitchen/test-kitchen/issues/331
curl -L https://www.chef.io/chef/install.sh | sudo bash

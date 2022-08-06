#!/bin/bash
# ansible on host S1
#-m raw is the module being used
#-a means argument and the argument being used is "show version"
#-u user andres (ssh user)
#-k prompts for a password


ansible S1 -m raw -a "show version" -u andres -k
#!/bin/bash

# ~/.bash_logout: executed by bash(1) when login shell exits.

if [ -f ~/.sudo_as_admin_successful ]; then
    rm ~/.sudo_as_admin_successful
fi

if [ -f ~/.kpcli-history ]; then
  rm ~/.kpcli-history
fi

# when leaving the console clear the screen to increase privacy
if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
fi

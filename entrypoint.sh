#!/bin/sh

# Add local user and group
# Either use the uid and gid if passed in at runtime or
# fallback to 9001

USER_ID=${uid:-9001}
GROUP_ID=${gid:-9001}

echo -e "UID : $USER_ID\nGID : $GROUP_ID\n"

chown -R $USER_ID:$GROUP_ID /home/plugins
chown -R $USER_ID:$GROUP_ID /home/script

exec gosu $USER_ID "$@"
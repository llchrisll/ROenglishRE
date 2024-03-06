This Addon requires the patch 'Load iteminfo with char server', which only works with 2015-10-29 clients with NEMO because it was removed in newer clients.
Up to which client exactly it's still supported I can't say yet.

While WARP has the patch available, it's not working for newer clients.

This patch adds an additional argument to the 'main' function called with the itemInfo,
in which the 'server_name' from your server's conf/char_athena.conf is passed to the client.

Current setup of the function is to check for 'Pre-Renewal' as value to use the pre-renewal iteminfo instead.

For newer clients, we would need to ask Neo to fix the patch.

Tested Clients:
 > 2015-10-29 = Works (NEMO)
 > 2018-06-20 = Not working (WARP)
 > 2022-04-06 = Not working (WARP)
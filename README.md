multiuser
=========

Allows multiple users to use the same linux account.

This package helps to set up a linux account for multiple users (for a lab
session for example). 
All the users will share the same login and password
on the machine, but they will have to select their name when they log in.
This action will change their `$HOME` environment variable such that
they will not interfere too much with other users.

*Warning*: this package is not secure and relies on trusting the users.


Install
-------

Copy all the files to a new account, and modify the `users` file to include the
name of your users. You can also add files to the `skel` directory such than
all the users will get a copy of these files.




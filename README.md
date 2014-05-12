Docker Drupal Development Envirnment
====================================

This project is an example of how to use Docker and Fig to create a Drupal development environment complete with PHP server and MySQL backend.

Usage
-----

This project is intended to be used by running fig which manages the docker containers needed to run the application.  Here is how it should work.

0. Make sure your system is capable of running docker and has fig installed.  As a helper for those who are not capable of running docker on their host, run `vagrant up` and then `vagrant ssh` to use a VM.  You'll need to be in the `/vagrant` directory to run fig so, `cd /vagrant`.
1. `fig up` - Build's and runs the docker containers.
2. Visit the website `localhost:8000/install.php` or `10.2.4.122:8000/install.php` if you are using Vagrant.  You should see the Drupal installer.
3. At this point you can edit code as normal on your host!

NOTE: Drupal will probably not work correctly only because I'm using the PHP built in server instead of Apache or nginx.

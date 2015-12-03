Synopsis
--------

This is an experimental car rental website. Users can list their cars and search
nearby cars. Other functions include user registration, login and logout. They
are built on Rails 4.0.4 and deployed to an Ubuntu machine. For detailed gem
list, refer to Gemfile.

Gem List in use
---------------

We use a lot of 3rd party modules to build this website. Below are feature and
its underlying module:

-   e.g. Feature: gem name

-   User authentication: devise

-   Website theme: twitter-bootstrap-rails

-   Car image upload: paperclip

-   Car position: gmaps4rails

-   Multi-step web form: wicked

Motivation
----------

Because we are Ruby on Rails beginners, we attempted to practice our skills.
This website is the result.

Installation
------------

You need a server that can run Rails app, so you can deploy this project to it.
In my case, I use gem Capistrano 3.1 for deployment. If you want to use
Capistrano for deployment, you can just change server information in
config/deploy/production.rb.

License
-------

MIT license

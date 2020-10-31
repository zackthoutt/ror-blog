# What is this?
This repo contains a sample blog built with Ruby on Rails. There are instructions below to get the app working in both development and production environments.

# Requirements
1. Articles
  - Unauthenticated users can view articles
  - Admins can create, edit, delete, and view articles
  - Article resources has title, blurb (summary of main content), body, tags, and comments
2. Tags
  - Tags have many-to-many relationship with articles
  - Can display list of tags
  - Can display list of articles for a given tag
3. Comments
  - Unauthenticated users can create and view comments
  - Admins can create, view, and delete comments
  - Comments are limited to five per article to avoid spamming
4. Data
  - Article and tag data can be seeded using a database seeder
5. Assets
  - SASS is comipled into CSS and serverd to the user
  - Coffee script is compiled into JS and served to the user
6. Production
  - The code can run in a production environment using Nginx, Unicorn, and Linux
  - Code can be deployed via Capistrano
  - All routes are sent via SSL

# Development Server
To get a development version of the app running follow the steps below:

1. Clone the repository
2. Run "rails server"
3. Run "rake db:seed"

# Production Server
To get a development version of the app running follow the steps below:

1. Log onto Digital ocean and spin up a server with Ubuntu 14.04 x 64
2. Install Ruby and rbenv according to [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-14-04)
3. Configure the server with Unicorn and Nginx according to [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-deploy-a-rails-app-with-unicorn-and-nginx-on-ubuntu-14-04)
  - The only divergence from the tutorial is that you need to point the root in your Nginx configuration to "/public/current" instead of "/public" for Capistrano
4. Follow [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-14-04) to get SSL working with LetsEncrypt
5. Make sure that you have SECRET_KEY_BASE set and RAILS_ENV=production in your .rbenv-vars file in the root of the app
6. Change the server settings in the "/config/deploy/production.rb" file to your server's IP and a user with sudo capability
7. Run "bundle exec cap production deploy:inital"
8. SSH into your server and run "rake db:seed"
9. Navigate to your server's IP in the browser to use the blog app!


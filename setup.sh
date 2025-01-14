#!/bin/bash

# Ensure the script stops on error
set -e

# Configure Git user for the current directory
git config --local user.name "zahidsaeed789"
git config --local user.email "zahiddev789@gmail.com"

# Run Composer installation
composer install

# Run NPM installation
npm install && npm run build

# Run Laravel migrations
php artisan migrate
php artisan migrate:fresh

# Run database seeder
php artisan db:seed

# Print a success message
echo "----- All commands executed successfully! ----"

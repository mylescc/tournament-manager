#! /bin/bash
echo 'Restoring from heroku'
heroku pg:backups capture -a tournamentmanager 
curl -o latest.dump `heroku pg:backups public-url -a tournamentmanager`
rake db:drop
rake db:create
pg_restore --verbose --clean --no-acl --no-owner -h localhost -U postgres -d tournamentmanager latest.dump
echo 'Starting Migrations'
rake db:migrate
rm latest.dump

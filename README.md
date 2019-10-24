Doctolibkiller Database 8.6 ; by Titouan G. & Viktor P.

Ruby 2.5.1 is needed to run this database
Don't forget to #bundle install before running tests !

This program will allow you to check through Doctolibkiller's database, here's a little guide to check through it :

- $rails db:migrate to put all migrations up

- $rails db:seed to create some data

- $rails console to ignite

- put $tp in front of your search to get the result in a nice table ! Using the gem "table print".

- The database contains doctors, patients, appointments, medical specialties and cities. Each class goes as follows :

Doctor, Patient, Appointment, Specialty, City

Exemple of search : $tp Doctor.all   > will show you the list of doctors in a nice table

Have fun with it !
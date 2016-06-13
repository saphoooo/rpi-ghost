# Dockerfile for rpi-ghost-0.8.0
This is my Dockerfile for rpi-ghost. You can now install the famous blogging platform on your Raspberry pi!
Enjoy blogging.

## Run Ghost on your Raspberry pi ##

`$ sudo docker run -ti --name ghost -d -p 80:2368 de13/ghost`

Then you can access your Ghost server through http://raspberry-pi_ip/ghost

See also [de13/rpi-ghost] (https://hub.docker.com/r/de13/rpi-ghost/)

## About this version ##

This version use Node.js argon (4.5) and Ghost 0.8.0.
The config.js use the embeded sqlite3.

## Use an external Database ##

You can edit the config.js to point on an external Database:

### For MySQL ###

```
        database: {
            client: 'mysql',
            connection: {
                host     : '127.0.0.1',
                user     : 'root',
                password : '',
                database : 'ghost_testing',
                charset  : 'utf8'
            }
        },
```

### For Postgres ###

```
        database: {
            client: 'pg',
            connection: {
                host     : '127.0.0.1',
                user     : 'postgres',
                password : '',
                database : 'ghost_testing',
                charset  : 'utf8'
            }
        },
```

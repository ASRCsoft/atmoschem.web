# atmoschem website (rails version)

This is the (kind of old) Ruby on Rails-based atmoschem website. It
sends emails with data access instructions. The newer Hugo website is
on another branch.

## Running

The app is set up as an upstart service on the atmoschem server. Use

```sh
sudo initctl start railsweb
sudo initctl stop railsweb
initctl status railsweb
```
to start, stop, or check the status of the app, respectively.

The apache config at `/etc/httpd/conf.d/rails_website.conf` includes
more notes about the setup.

A secrets.yml file is required for running the app but not included in
this repository.

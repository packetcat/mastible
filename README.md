# mastible
An Ansible playbook to install Mastodon

## Requirements

- Latest stable version of Ansible
- Server(s) running Ubuntu 16.04/18.04/20.04 LTS for hosting Mastodon

## Testing status

Mastible was tested on 20/08/2020 with Ansible 2.9.12 on a Ubuntu 20.04 server.

## Instructions for running this playbook (first time install)

- Copy group_vars/all.sample to group_vars/all and edit it to specify the
  database name you wish to use with Mastodon. LOCAL_DOMAIN value is mandatory, it is your instance domain/sub-domain. **The PostgreSQL database role
  will drop this database in preparation for Mastodon's database setup so make
  sure this is not a database you are currently using**
- Copy roles/mastodon-config/templates/.env.production.sample to
  roles/mastodon-config/templates/.env.production, edit with all
  relevant details.
- Make a hosts file that looks like this:

```
[mastodon]
dev.example.social
```
- Run the playbook with `ansible-playbook -i hosts --extra-vars='install=true' site.yml`

## Instructions for using this playbook to update an existing instance

- Update version number in roles/mastodon-app/tasks/main.yml
- Run the playbook with `ansible-playbook -i hosts site.yml`
  (**Note the lack of the install variable which is needed for installation related tasks**)

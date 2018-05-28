# mastible
An Ansible playbook to install Mastodon

## Requirements

- Latest stable version of Ansible (this was tested with Ansible 2.4)
- Server(s) running Ubuntu 16.04/18.04 LTS for hosting Mastodon

## Instructions for running this playbook

- Copy group_vars/all.sample to group_vars/all and edit it to specify the
  database name you wish to use with Mastodon. **The PostgreSQL database role
  will drop this database in preparation for Mastodon's database setup so make
  sure this is not a database you are currently using**
- Copy roles/mastodon-config/templates/.env.production.sample to
  roles/mastodon-config/templates/.env.production, edit with all
  relevant details. (SMTP details are probably the only required one,
  the others you can leave be)
- Make a hosts file that looks like this (**Make sure that the nodename
  here is the domain/sub-domain you want for your Mastodon instance, we
  use it as a variable**):

```
[mastodon]
dev.example.social
```
- Run the playbook with `ansible-playbook -i hosts site.yml`

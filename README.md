# mastible
An Ansible playbook to install Mastodon

## Instructions for running this playbook

- Copy group_vars/all.sample to group_vars/all, edit with your own instance's domain/sub-domain
- Copy roles/mastodon-config/templates/.env.production.sample to roles/mastodon-config/templates/.env.production, edit with all relevant details
  (SMTP details are probably the only required one, the others you can leave be)
- Make a hosts file that looks like this:

```
[mastodon]
dev.example.social
```
- Run the playbook with `ansible-playbook -i hosts site.yml`

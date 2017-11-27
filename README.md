# mastible
An Ansible playbook to install Mastodon

## Instructions for running this playbook

- Copy roles/mastodon-config/templates/.env.production.sample to roles/mastodon-config/templates/.env.production, edit with all relevant details
  (SMTP details are probably the only required one, the others you can leave be)
- Make a hosts file that looks like this (*Make sure that the nodename here is the domain/sub-domain you want for your Mastodon instance, we use it as a variable*):

```
[mastodon]
dev.example.social
```
- Run the playbook with `ansible-playbook -i hosts site.yml`

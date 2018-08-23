#!/usr/bin/env bash
letsencrypt renew
service nginx reload

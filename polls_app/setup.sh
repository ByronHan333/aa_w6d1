#!/usr/bin/env sh
rails db:drop
rails db:create
rails db:migrate
rails db:seed

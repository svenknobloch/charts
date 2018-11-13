#!/bin/bash
until $(nc -w 5 -z {{ template "gitea.database" . }} 5432); do
    sleep 1
done

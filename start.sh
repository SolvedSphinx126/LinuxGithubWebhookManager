#!/bin/bash
nohup webhook -hooks repo.json -verbose &
disown

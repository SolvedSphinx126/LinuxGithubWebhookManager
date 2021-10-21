# LinuxGithubWebhookManager
This is a project to deploy remote repositories to a Linux server on push events.

The webhook listens to port 9000 by default.
You can modify the port that the webhook listens to by adding `-port int` to line 2 of start.sh before the "&".

ex. `webhook -hooks repo.json -port 8000 &`

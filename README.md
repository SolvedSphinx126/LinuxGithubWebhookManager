# LinuxGithubWebhookManager
This is a project to deploy remote repositories to a Linux server on push events.


## Setting a port
The webhook listens to port 9000 by default.
You can modify the port that the webhook listens to by adding `-port int` to [line 2](https://github.com/SolvedSphinx126/LinuxGithubWebhookManager/blob/a5b33047304d41167365a7418f3ec958efceae69/start.sh#L2) of start.sh before the "&".

ex. 
```bash
webhook -hooks repo.json -port 8000 &
```


## Setting a branch
The webhook only listens to pushes to the branch `Production` by default, to modify that, edit [line 20](https://github.com/SolvedSphinx126/LinuxGithubWebhookManager/blob/a5b33047304d41167365a7418f3ec958efceae69/repo.json#L20) of repo.json to the name of the branch you want to listen for pushes to.

ex.
```json
"value": "refs/heads/Master",
```

1. --start-at-task
Lets you restart a playbook from a specific task name.

Example:

bash
ansible-playbook site.yml --start-at-task="Deploy application"
This skips everything before that task.

2. --limit
Restrict execution to specific hosts (e.g., only those that failed).

Example:

bash
ansible-playbook site.yml --limit failed_hosts
3. serial Strategy
Runs tasks in batches. If one batch fails, you can fix the issue and re-run only that batch.
  - hosts: webservers
  serial: 2
  tasks:
    - name: Deploy app
      copy:
        src: app.war
        dest: /opt/app/

  4. max_fail_percentage or any_errors_fatal
Control how many failures are tolerated before stopping the play.

5. --step
Runs playbook interactively, asking before each task. Useful for resuming after failure.

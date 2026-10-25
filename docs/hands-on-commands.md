# Hands-on Technical Commands

> **Important:** These are reproducible **examples added after the original lab**. The original ticket #14003 was handled in the Zammad web UI, not through these scripts. No API execution results are claimed.

## 1. Check Docker environment

```bash
docker --version
docker compose version
docker ps
```

## 2. Use the maintained Zammad Docker Compose stack

Follow the [official Zammad Docker Compose repository](https://github.com/zammad/zammad-docker-compose) for a full deployment. Zammad needs multiple cooperating services, so do not treat the demonstration YAML in `examples/` as a deployable stack.

## 3. Configure API access

Create a suitable Zammad API token in your **local test environment** and set the variables in your shell:

```bash
export ZAMMAD_URL="http://localhost:8080"
export ZAMMAD_TOKEN="YOUR_LOCAL_TEST_TOKEN"
export ZAMMAD_GROUP="IT Helpdesk"
export ZAMMAD_CUSTOMER_EMAIL="your-test-customer@example.invalid"
```

Never commit tokens or passwords to GitHub. Replace the URL with the port actually used by your Zammad instance.

## 4. Run read-only API checks

```bash
bash scripts/check-zammad-api.sh
bash scripts/list-tickets.sh
```

## 5. Optional: create a separate demo ticket

```bash
bash scripts/create-demo-ticket.sh
```

This creates a **new test ticket** and does not alter ticket #14003.

## 6. Verify the original practical workflow

Open the Zammad web interface and review ticket **#14003**, confirming its owner is Ahmed Technician, its customer is Mohammed Employee, and its status remains Open.

## Scope

- **Completed original lab:** Web UI setup, role/group practice, ticket assignment, agent/customer replies.
- **Added reproducible examples:** Shell commands, API requests, Docker deployment reference.
- **Not claimed:** Production hosting, executed API automation, resolved Wi-Fi fault.

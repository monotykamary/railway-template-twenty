# Deploy and Host Twenty CRM on Railway

Twenty is a modern open-source CRM for managing companies, contacts, opportunities, tasks, notes, workflows, dashboards, email, and calendars. It provides a fast configurable alternative to conventional per-seat CRM platforms.

## About Hosting Twenty CRM

This template runs Twenty `v2.26.0` as a production-style stack: a public server, a dedicated background worker, PostgreSQL 16, authenticated Redis with `noeviction`, and a Railway object-storage bucket. The server performs database migrations and cron registration. The worker handles asynchronous imports, email synchronization, and workflow execution.

Attachments use Twenty's S3 driver because Railway services cannot share one filesystem volume. PostgreSQL and Redis each retain their own data on persistent volumes. Encryption and legacy application secrets are generated once and shared automatically between the server and worker.

## Common Use Cases

- Sales pipelines, contacts, companies, opportunities, and tasks
- Self-hosted customer data and workflow automation
- A configurable open-source alternative to Salesforce or Pipedrive
- Email and calendar synchronization with separately configured OAuth apps

## Dependencies for Twenty CRM Hosting

- PostgreSQL 16
- Redis configured with `noeviction`
- Railway object-storage bucket
- At least 2 GB of aggregate memory, per upstream guidance
- Optional SMTP and Google or Microsoft OAuth credentials

### Deployment Dependencies

- [Twenty repository](https://github.com/twentyhq/twenty)
- [Twenty self-hosting documentation](https://twenty.com/developers/section/self-hosting)
- [Template source](https://github.com/monotykamary/railway-template-twenty)

### Implementation Details

Open the `server` service domain after deployment and create the first workspace. The template pins server and worker to the same `v2.26.0` image. `SERVER_URL`, PostgreSQL, Redis, object-storage credentials, `APP_SECRET`, and `ENCRYPTION_KEY` are wired across services automatically. Do not rotate encryption variables without following Twenty's key-rotation procedure.

### Why Deploy Twenty CRM on Railway?

Railway provides HTTPS, private service networking, managed deployment ordering, persistent database volumes, object storage, health checks, and centralized logs for the full Twenty stack.

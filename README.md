# Twenty CRM on Railway

Production-oriented Railway template for [Twenty](https://github.com/twentyhq/twenty), the open-source CRM designed for AI.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/twenty-crm-v2-railway?referralCode=ZqgrJ0)

The template pins Twenty `v2.26.0` and deploys:

- Twenty server with `/healthz`
- Dedicated Twenty worker
- PostgreSQL 16 with a persistent volume
- Redis with authentication, AOF persistence, and `noeviction`
- Railway object-storage bucket shared through Twenty's S3 driver

The bucket replaces upstream's shared local-storage volume, which cannot be mounted by two independent Railway services.

## Updating

Update both `server/Dockerfile` and `worker/Dockerfile` to the same upstream Twenty tag, test migrations and worker startup, then update the published template together.

## Source

- [Twenty self-hosting documentation](https://twenty.com/developers/section/self-hosting)
- [Twenty v2.26.0](https://github.com/twentyhq/twenty/releases/tag/twenty%2Fv2.26.0)
- [Twenty license](https://github.com/twentyhq/twenty/blob/main/LICENSE)

# Wearpact Deployment Instructions

## Prerequisites

- Docker and Docker Compose installed
- Git (for cloning the repository)

## Images Included

1. wearpact-admin: The admin dashboard application
2. wearpact-admin-mongo: MongoDB database for the admin dashboard
3. wearpact-client: The client-facing application

## Deployment Steps

### 1. Start the Admin Dashboard

```bash
cd wearpact-admin
docker-compose -f docker-compose.prod.yml up -d
```

The admin dashboard will be available at http://localhost:3000

### 2. Start the Client Application

```bash
cd wearpact-client
docker-compose -f docker-compose.prod.yml up -d
```

The client application will be available at http://localhost:8080

## Environment Variables

Make sure to set the following environment variables in your docker-compose.prod.yml files:

### Admin Dashboard

- `MONGODB_URI`: MongoDB connection string
- `PAYLOAD_SECRET`: Secret key for Payload CMS
- `PAYLOAD_PUBLIC_SERVER_URL`: Public URL of the admin dashboard

### Client Application

- `NEXT_PUBLIC_CMS_URL`: URL of the admin dashboard CMS

## Troubleshooting

1. If containers fail to start, check the logs:

```bash
docker-compose logs
```

2. To rebuild the images:

```bash
./build-images.sh
```

3. To stop all services:

```bash
docker-compose down
```

## Support

For any issues or questions, please contact the development team.

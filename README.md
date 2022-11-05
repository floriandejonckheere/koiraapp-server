# Koira App

Koira App is a handy app to meet and greet shelter dogs.
It's a project for the Junction 2022 Hackathon in Espoo, Finland.

This is the repository containing the backend API for the app.
For the iOS app, see [rzakhar/koiraapp](https://github.com/rzakhar/koiraapp).

# Setup

First, ensure you have a working Docker environment.

Pull the images and start the containers:

```
docker-compose up -d
```

Set up the PostgreSQL database:

```
docker-compose exec app rails db:setup
```

Load sample data into the PostgreSQL database:

```
docker-compose exec app rails database:seed
```

The application should now be available at [http://localhost:3000](http://localhost:3000).

## Development

Use the `bin/update` script to update your development environment dependencies.

## Debugging

To debug the server component in your IDE, start the `debug` instead of the `app` container, and connect to `localhost:1234`.

## Testing

Run the test suite:

```
rspec
```

## Secrets

### Repository secrets

Github secrets for release:

- `DOCKER_TOKEN` (needed for [Github Container Registry](https://docs.github.com/en/packages/getting-started-with-github-container-registry/migrating-to-github-container-registry-for-docker-images))

### Environment secrets

Github secrets for continuous deployment (process):

- `DOCKER_TOKEN` (needed for [Github Container Registry](https://docs.github.com/en/packages/getting-started-with-github-container-registry/migrating-to-github-container-registry-for-docker-images))
- `GANDIV5_API_KEY` (needed for Let's Encrypt integration)
- `SECRET_KEY_BASE`

- `SSH_HOST` (deployment host)
- `SSH_USER` (deployment user)
- `SSH_KEY` (private key)
- `SSH_HOST_KEY` (host public key)

## Releasing

Update the changelog and bump the version in `lib/koira/version.rb`.
Create a tag for the version and push it to Github.
A Docker image will automatically be built and pushed to the registry.

```sh
nano lib/koira/version.rb
git add lib/koira/version.rb
git commit -m "Bump version to v1.0.0"
git tag v1.0.0
git push origin master
git push origin v1.0.0
```

## License

See [LICENSE.md](LICENSE.md).

# Python Cloudron App

This is a simple Flask application that serves a "Hello World!" message on the root route. The application is designed to run inside a Docker container and can be deployed on Cloudron.

## Prerequisites

- Docker
- Cloudron CLI (optional, for deploying on Cloudron)

## Installation

1. Clone this repository:
```bash
git clone https://github.com/jan-iff/python_cloudron.git
cd python_cloudron
```
2. Build the Docker image:
```bash
docker build -t python-cloudron-app .
```
3. Run the Docker container:
```bash
docker run -p 3000:3000 --name python-cloudron-app-instance python-cloudron-app
```
The application should now be accessible at http://localhost:3000.

## Deployment on Cloudron

1. Install the [Cloudron CLI](https://cloudron.io/documentation/cli/#install) and log in to your Cloudron account:
```bash
cloudron login my.example.com
```
Replace my.example.com with your Cloudron domain.

2. Deploy the app on Cloudron:
```bash
cloudron install --image python-cloudron-app --manifest CloudronManifest --location python-cloudron-app
```
Replace python-cloudron-app in the --location flag with your desired subdomain.

## License

This project is licensed under the MIT License.

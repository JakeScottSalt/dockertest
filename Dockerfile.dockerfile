FROM alpine:latest

# Install git and bash
RUN apk add --no-cache git bash openssh

# Set working directory
WORKDIR /app

# Clone repo securely using a token (replace variables as needed)
ARG GITHUB_TOKEN
ARG REPO_URL
RUN git clone https://github.com/JakeScottSalt/dockertest.git

CMD ["bash"]

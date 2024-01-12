FROM gcc:latest
COPY . /app
WORKDIR /app
CMD gcc app.cpp
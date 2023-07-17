# K6 Test Container

This repository provides a Docker container with the K6 tool, which enables users to perform performance testing on their applications. With the K6 Test Container, you can quickly set up and run performance tests without the need for complex configuration.

## Getting Started

To use the K6 Test Container, follow these steps:

* Install Docker on your system if you haven't already.
* Clone this repository to your local machine.
* Build the Docker image using the provided script:

```bash
./cmd build
```

* Run the container interactively:

```bash
./cmd run
```

* Inside the container, you can execute K6 commands and run performance tests using the available scripts.

## Usage

The K6 Test Container provides a convenient environment for running performance tests with K6. Here are some key points to keep in mind:

* Customize the K6 settings according to your testing needs.
* Update the URL in the test.js file with the target API URL you want to test:

```javascript
// /test.js
const url = "https://api.example.com"; // Replace with your API URL.
```

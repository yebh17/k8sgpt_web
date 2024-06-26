# k8sgpt_web

Welcome to the `k8sgpt_web` project! This repository contains the source code for a Kubernetes GPT-based web application.

## Getting Started

To get started with `k8sgpt_web`, follow the instructions below:

### Prerequisites

Ensure you have the following installed on your machine:

- [Git](https://git-scm.com/)
- [Ansible] (https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html)
- [Go](https://go.dev/doc/install) (version 1.16 or higher)

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yebh17/k8sgpt_web.git
   ```

2. **Change to the project directory:**

   ```bash
   cd k8sgpt_web/k8sgpt
   ```

3. **Build the project:**

   ```bash
   go build -o k8sgpt
   ```
If you do not have Go installed, please install it from [Go's official site](https://go.dev/doc/install).

4. **Test the build:**

   ```bash
   ./k8sgpt --help
   ``` 
This command should display the help information for the `k8sgpt` binary, confirming that it has been built and is working as expected.

5. **Generate the link to create the access key**

   ```bash
   ./k8sgpt generate
   ```
Now copy the link and run in the browser so that you will be able to see the icon to generate the API key. click on it and copy the API key.

6. **Add the API key**

   ```bash
   k8sgpt auth add
   ```
This will prompt the stdin to input the API key, paste the key and press enter.

7. **Test the k8sgpt with running a scan**

   ```bash
   k8sgpt analyze --explain
   ```
8. **Now go back to our main project and run the k8sgpt webserver**

   ```bash
   cd ..
   pip3 install flask
   ./k8sgpt_web
   ```
Now copy the url and paste and run in the browser you will be able to see the page with all available filters from which clicking on each of them will redirect you to the respective pages showing the status of the cluster.
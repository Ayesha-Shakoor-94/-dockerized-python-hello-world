
# Python Hello World in Dev Container

This project demonstrates how to create and run a basic Python "Hello World" application inside a Docker Dev Container. Follow these steps to set up your development environment and run the Python script.

## Overview

1. **Write the Python Code**: Create a simple Python script to print "Hello, World!".
2. **Set Up the Dev Container**: Configure a Dev Container environment for consistent development.
3. **Build and Run the Container**: Build the Docker image and run the container to execute the Python script.

## Step-by-Step Guide

### 1. Write the Python Code

Create a Python script named `hello.py` with the following content:

```python
# hello.py
print("Hello, World!")
```

This script will print "Hello, World!" to the console when executed.

### 2. Set Up the Dev Container

1. **Create a Dev Container Configuration**:
   
   - **`.devcontainer` Folder**: Create a `.devcontainer` folder in the root of your project directory.
   - **`Dockerfile`**: Inside the `.devcontainer` folder, create a file named `Dockerfile` with the following content:

     ```Dockerfile
     # Use the official Python image from the Docker Hub
     FROM python:3.9-slim

     # Set the working directory inside the container
     WORKDIR /app

     # Copy the local Python script into the container
     COPY hello.py .

     # Specify the command to run the Python script
     CMD ["python", "hello.py"]
     ```

   - **`devcontainer.json`**: Also in the `.devcontainer` folder, create a `devcontainer.json` file with the following content:

     ```json
     {
         "name": "Python Dev Container",
         "dockerFile": "../Dockerfile",
         "customizations": {
             "vscode": {
                 "extensions": [
                     "ms-python.python"
                 ],
                 "settings": {
                     "python.pythonPath": "/usr/local/bin/python"
                 }
             }
         }
     }
     ```

   This configuration tells Visual Studio Code to use the `Dockerfile` to build the Dev Container, install the Python extension, and set the Python path.

### 3. Build and Run the Container

1. **Open the Project in VS Code**:
   
   - Open Visual Studio Code.
   - Clone or open the project folder containing the `.devcontainer` directory.

2. **Reopen in Container**:

   - VS Code should prompt you to reopen the project in a container. If not, use the Command Palette (`Ctrl+Shift+P`), type `Remote-Containers: Reopen in Container`, and select it.

   - VS Code will build the Docker image based on the `Dockerfile` and set up the Dev Container environment.

3. **Run the Python Script**:

   - Once the container is up and running, open the integrated terminal in VS Code (Terminal > New Terminal).

   - You should be inside the container's working directory. Run the Python script using the command:

     ```sh
     python hello.py
     ```

   - You should see the output:

     ```
     Hello, World!
     ```

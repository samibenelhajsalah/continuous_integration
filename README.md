# Add simple CI for c++ example by installing g++ compile
```yml
name: CI

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout repository
      uses: actions/checkout@v2

    - name: Install g++
      run: sudo apt-get update && sudo apt-get install -y g++

    - name: Build project
      run: g++ -o myapp main.cpp

    - name: Run tests
      run: ./myapp
```

>Assurez-vous de créer le fichier de configuration de workflow ci.yml dans le dossier .github/workflows de votre dépôt GitHub. Une fois cela fait, chaque fois que vous effectuez un push ou une pull_request sur la branche principale (main), le workflow CI sera déclenché, et votre code sera compilé et testé automatiquement.
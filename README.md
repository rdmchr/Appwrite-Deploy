# Apppwrite-Deploy
This action allows you to deploy your Appwrite functions using GitHub actions.

# Inputs

- **endpoint** Your Appwrite endpoint
- **project** The Appwrite project id
- **key** The Appwrite API token
- **function** The id of the function you want to deploy
- **command** The command that starts your function
- **code** The directory containing your function (default: './')
- **locale** The locale of the cli (default: 'en-US')

# Example

```YAML
name: Deploy to Appwrite
on:
  push:
    branches:
     - master

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: Deploy my function to Appwrite
        uses: rdmchr/Appwrite-Deploy@v0.1
        with:
          endpoint: '[ Your Appwrite endpoint ]'
          project: '[ The id of your Appwrite project ]'
          key: '[ Your Appwrite API Token ]'
          function: '[ The id of the function you are deploying ]'
          command: 'node index.js'
```
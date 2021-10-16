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

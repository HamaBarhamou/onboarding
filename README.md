# Tutorial Steps - Getting Started with Jmix
This tutorial is designed to help you get familiar with the Jmix technology. Follow the steps below to build, run, and interact with your Jmix application, and to explore its REST API capabilities.

### Prerequisites
Ensure you have Java 11 or newer installed on your system.
An IDE such as IntelliJ IDEA (Community or Ultimate Edition) is recommended for a better development experience.
## Step 1: Setup and Run the Application  
1- Clone the repository to your local machine.  
2- Open a terminal in the project directory.  
3- Build and run the application using the command: ```./gradlew bootRun```  
4- Open a web browser and navigate to http://localhost:8080 in a web browser  
### Login with users and passwords.  

| username | password |
|----------|----------|
| admin    | admin    |
| bob      | bob      |
| nafissa  | nafissa  |
| hama     | hama     |


## Step 2: Exploring the Application
- Navigate through the application UI to understand its structure and features.
- Explore the available views and entities.

## Step 3: Working with the REST API
*Obtaining an Access Token:* Use the provided cURL command to obtain an access token. This token will be used to authenticate API requests.

```
curl -X POST http://localhost:8080/oauth2/token \
--basic --user my-client:my-secret \
-H "Content-Type: application/x-www-form-urlencoded" \
-d "grant_type=client_credentials"
```
Replace ```my-client``` and ```my-secret``` with your actual client ID and secret.  
On Windows, remove \ symbols and write the command in a single line.  
As a result, you should get something like this:

```
HTTP/1.1 200
{
"access_token":"hKhgNyGMTqaKd6prH-GoHF8zFVTSr9tKKyE3OnMoafRO4FT4Xq_cewHr28cIRITaRmF0olRXpVTyFdxcOPTAl8Vc7xopHrdNuXNXwEeBn7NSiEMvQXW5zO0dwMn_H8FQ",
"token_type":"Bearer",
"expires_in":299
}
```
### Retrieve Entity List
With the access token you can use the generic REST API endpoints to load a list of users (replace <access_token> with the value obtained on the previous step). In this case, we will fetch all the users that are present in the application through the Entities API:  
```
curl -X GET http://localhost:8080/rest/entities/User \
-H "Authorization: Bearer <access_token>"
```
The response will contain all users that are available in the application:
```
HTTP/1.1 200
[
{
"_entityName": "User",
"_instanceName": "[admin]",
"id": "60885987-1b61-4247-94c7-dff348347f93",
"version": 1,
"active": true,
"username": "admin"
}
]
```
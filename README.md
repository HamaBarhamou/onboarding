# How to run
Clone this repository 
Open terminal in the project directory 
Build and run the application: 
```
./gradlew bootRun 
```
Open http://localhost:8080 in a web browser 
Login with admin user and admin password.  

| username | password |
|----------|----------|
| admin    | admin    |
| bob      | bob      |
| nafissa  | nafissa  |
| hama     | hama     |

# API REST
## Obtaining Access Token
```
curl -X POST http://localhost:8080/oauth2/token \
--basic --user my-client:my-secret \
-H "Content-Type: application/x-www-form-urlencoded" \
-d "grant_type=client_credentials"
```
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
## Retrieve Entity List
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
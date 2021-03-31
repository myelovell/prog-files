require 'httparty'

auth = {
    username: "", #REDACTED
    password: "" #REDACTED
}

body = {
    grant_type: "password",
    username: "myelovell",
    password: "" #REDACTED
}

headers = {
    "User-Agent" => "Test-Client 0.1 by myelovell"
}
response = HTTParty.post('https://www.reddit.com/api/v1/access_token', basic_auth: auth, body: body, headers: headers)




access_token = response[""] #REDACTED

headers = {
    "Authorization": "bearer ", #REDACTED
    "User-Agent" => "Test-Client 0.1 by myelovell"
}

response = HTTParty.post('https://oauth.reddit.com/api/v1/me', headers: headers)

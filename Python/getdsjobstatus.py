import requests
url = "https://<removed>/ibm/iis/api/dscdesignerapi"
params = {
    "api": "getDSJobStatus",
    "jobName": "<removed>",
    "projectName": "<removed>",
    "hostName": "<removed>",
    "getFullOutput": "true",
    "apiVersion": "<apiVer>"
}

# Credentials
auth = ('<removed>', '<removed>')

# Disable SSL cert
response = requests.get(url, params=params, auth=auth, verify=False)

if response.status_code == 200:
  print("API request successful")
  print(response.json()) #response.text for non-JSON

else:
  print(f"API request failed with status code {response.status_code}")
  print(response.text)
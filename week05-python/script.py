import requests

url = "https://api.github.com/users/xihxxn"
response = requests.get(url)
data = response.json()

print("User:", data["login"])
print("Followers:", data["followers"])
print("Public Repos:", data["public_repos"])

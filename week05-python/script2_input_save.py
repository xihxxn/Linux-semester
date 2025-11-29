import requests
import json

username = input("Github username을 입력하세요 : ")
url = f"https://api.github.com/users/{username}"
response = requests.get(url)

data = response.json()

with open("github_user.json", "w") as f:
	json.dump(data, f, indent=4)

print("Api 요청완료! github_user.json 파일로 저장됨.")

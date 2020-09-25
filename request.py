import requests
# Change the value of experience that you want to test
url = 'http://192.168.10.2:5000/api'
feature = [[11.8, 4.0, 4.2, 0.5]]
labels ={
  0: "setosa",
  1: "versicolor",
  2: "virginica"
}

r = requests.post(url,json={'feature': feature})
print(labels[r.json()])
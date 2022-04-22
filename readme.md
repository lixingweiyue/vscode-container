# vscode develop in container

## 1 编写Dockerfile
创建一个无限循环的python程序，app.py：

创建如下的Dockerfile，采用python的官方镜像，安装Flask包，再将app.py复制到工作目录中.

## 2 docker build:
```
docker build . -t python-flask
```

## 3 install the container:
```
docker run -d --name vsc01 -v C:/docker/python:/root/newfolder python-flask
```

## 4 安装了vscode remote container后，右下角有绿色图标><,
点击，选择attach to container, 找到vsc01, 点击打开。

在新的vscode中，打开文件夹，选择root

## 5 在目录/root/newfolder下新建index.py:
```
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    html = '<h1 style="color:DodgerBlue;"> Hello world!' + "</h1></br>"
    return html

if __name__ == "__main__":
  app.run(host='0.0.0.0', port=80)
```

## 6 安装code runner, 并点击运行index.py，在浏览器访问
http://localhost/

出现hello world!

表示成功














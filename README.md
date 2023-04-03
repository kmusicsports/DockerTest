# DockerTest
Docker, Docker Composeを初めて使う人が、詳しい原理は理解せずに、Webアプリ(Flask)を起動するための資料およびコードです。

※Docker, Docker Composeをしっかり学びたい方は、[公式のスタートガイド](https://docs.docker.com/get-started/)をご覧ください。

## 前提条件
1. CUIツール(ターミナル、コマンドプロンプトなど)でコマンドが打てる
2. Git が使える(clone, pull ができれば大丈夫)


## Dockerのインストール
基本的には、公式のインストールマニュアルに則って進めていけば問題ありません。

[https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)

インストールが完了したら、下記のコマンドを実行してください。
```
docker -v
```
下記のようなバージョン情報が表示され、エラーが出なければOKです。
エラーが出るようならPCを再起動してみると良いかもしれません。
```
Docker version 20.10.17, build 100c701
```

## Docker Desktopの起動
インストールしたDocker Desktopを開いてください。

初めてDocker Desktopを開くと、チュートリアルを開始しようとするかもしれませんが、できなさそうなら全然やらなくても良いです。

## Webアプリの準備
gitが使える方は、リポジトリをcloneしてください。
```
git clone https://github.com/kmusicsports/DockerTest.git
```
clone後のファイル構成はこのようになります。
```
DockerTest
 ├ .gitignore
 ├ docker-compose.yml
 ├ Dockerfile
 ├ README.md
 └ flask
     └ application.py
```

## ビルド&起動
1. cdコマンドでリポジトリをcloneした場所に移動
    ```
    cd リポジトリをcloneした場所(例: C:\Users\username\Desktop\DockerTest)
    ```
2. 下記のコマンドを打ち、ビルド&起動
    ```
    docker compose up -d
    ```
3. 「Creating dockertest_web_1 ... done」が表示されたら、[http://localhost:5000](http://localhost:5000/)にアクセスし、「Hello, World!」が表示されればOKです。

## 破棄
下記のコマンドを打ち、破棄します。
```
docker compose down
```

## Docker Desktopの終了
Docker Desktopのアプリは、ウィンドウを閉じるだけで終了できますが、Dockerは裏で動いたままです。
これは終了させなくても大丈夫ですが、メモリをまあまあ使用するので、作業が終われば終了させるのがおすすめです。
終了方法は、タスクバーやメニューバーなどからDockerアイコンを右クリックし、一番下の「Quit Cocker Desktop」を選択します。参考に[Docker Desktop for Windowsの終了方法](https://e-penguiner.com/change-location-of-docker-on-windows/#1-docker-desktop-for-windows%E3%81%AE%E5%81%9C%E6%AD%A2)をご覧ください。

## 参考資料
- [Docker+Flaskによるお手軽Webアプリ開発](https://qiita.com/phorizon20/items/57277fab1fd7aa994502)
- [Flaskのローカル開発環境を構築してみた](https://dev.classmethod.jp/articles/flask-local-develop/)
- [Dockerのチュートリアルをやっていく](https://zenn.dev/taichifukumoto/scraps/bfbdb56f7e5852)
- [Docker Composeでflask開発環境構築](https://amateur-engineer-blog.com/flask-docker-compose/)

# DockerTest
非エンジニアの方にもDocker, Docker Composeを使ってもらうための資料およびコード(Webアプリ)です。

※Docker ComposeでWebアプリを起動してもらうことのみを目的としているため、Docker, Docker Composeの説明・解説はしていません。しっかり学びたい方は、[公式のスタートガイド](https://docs.docker.com/get-started/)をご覧ください。

## Dockerのインストール
基本的には、公式のインストールマニュアルに則って進めていけば問題ありません。

[https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)

インストールが完了したら、PCに備わっているCUIツール(ターミナル、コマンドプロンプトなど)を起動し、下記のコマンドを実行してください。
```
docker -v
```
下記のようにバージョン情報が表示され、エラーが出なければOKです。
エラーが出るようならPCを再起動してみると良いかもしれません。
```
$ docker -v
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
そうでない方は、以下の手順でソースコードを準備してください。
1. 下記のリンクへアクセス
    [https://github.com/kmusicsports/DockerTest](https://github.com/kmusicsports/DockerTest)
2. 画面右側にある緑色の「code」ボタンをクリックし、一番下にある「Download Zip」を選択
3. ダウンロードしたzipファイルを解凍・展開
4. 展開したDockerTest-mainフォルダを任意の場所に移動

## ビルド&起動
1. CUIツールで、下記のようなコマンドを打ち、リポジトリをcloneした場所orDockerTest-mainフォルダを置いた場所に移動
    ```
    cd 移動したい場所(例: C:\Users\username\Desktop\DockerTest-main)
    ```
2. 下記のコマンドを打ち、ビルド&起動
    ```
    docker-compose up -d
    ```
3. 「Creating dockertest_web_1 ... done」が表示されたら、下記のリンクにアクセス
    [http://localhost:5000](http://localhost:5000/)
    「Hello, World!」が表示されればOKです。

## 停止or破棄
- 停止する場合(次回ビルドせずに起動可能)
    ```
    docker-compose stop
    ```
- 破棄する場合
    ```
    docker-compose down
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

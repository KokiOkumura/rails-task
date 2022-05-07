# DockerでRails6系とMySQL8での開発環境


# Usage

1. git cloneでrails_taskリポジトリをローカルにコピーする

```
git clone https://github.com/KokiOkumura/rails_task.git
```
2. コピーしたrails_taskディレクトリに移動する

```
cd rails-task
```
3. webコンテナの立ち上げと、データベースの作成を行う。

```
docker compose run web rails db:create
```
4. docker-compose upコマンドでコンテナを立てて、railsサーバーが起動していることを確認
```
docker-compose up
```
5. ブラウザでlocalhost:3000を立ち上げてrailsサーバーが起動していることを確認する。
[http://localhost:3000/](http://localhost:3000/)

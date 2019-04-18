# 未整理のメモ

```postgresql

GRANT CONNECT ON DATABASE database_name TO public;
```

## CircleCIでのUUIDの有効化（ポイントだけ）
```yml
    steps:
      - checkout
      - run: sudo apt-get update
      - run: sudo apt-get install postgresql-client-9.6 # psqlクライアントのインストール

      # setup Database
      - run:
          name: setup Database
          # データベースの作成後UUID有効化SQLの実行
          command: |
            bundle exec rake db:create RAILS_ENV=test
            psql -d postgresql://postgres@localhost/master -c "CREATE EXTENSION pgcrypto;"
```
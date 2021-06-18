# Tailwind CSS Rails と Firebase Authentication を使ってみた

### Docker 構築手順
1. `docker-compose run --no-deps web rails new . --force --database=postgresql`
2. `docker-compose build`
3. `docker-compose up`
4. `docker-compose run web rails db:create`

### Tailwind CSS Rails 導入手順
下記を Gemfile に追加
```
# Gemfile
gem 'webpacker', '~> 4.0.0'
gem 'tailwindcss', '~> 1.0.0'
```
追加で下記コマンドを実行
```
bundle exec rails webpacker:install
bundle exec rails g tailwindcss:install
```
`@tailwindcss/forms` を利用したい場合は下記を実行 (tailwind UI の [Form Layouts](https://tailwindui.com/components/application-ui/forms/form-layouts) を使いたい場合等)
```
# Using npm
npm install @tailwindcss/forms

# Using Yarn
yarn add @tailwindcss/forms
```
※フォーム参考画像
![スクリーンショット 2021-06-17 17 26 04](https://user-images.githubusercontent.com/48860427/122515014-cc133b80-d047-11eb-834d-f717667deda6.png)

### Firebase Authentication について
[FirebaseUI](https://firebase.google.com/docs/auth/web/firebaseui?hl=ja) を使用してログイン画面等を作り、Rails(サーバー)側で token(JWT) の復号処理等を行う
#### 動作画面
![google_auth_login](https://user-images.githubusercontent.com/48860427/122515120-f06f1800-d047-11eb-8fca-214e9258ce0b.gif)

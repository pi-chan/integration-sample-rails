# integration-sample-rails

devise + omniauth-facebookなRailsアプリケーションにdoorkeeper入れてiOSと連携できるようにするサンプルのRails側のコード。

iOS側のコードはこちら。

https://github.com/xoyip/integration-sample-ios

# 動かし方

- cloneする
- `bundle`
- `rake db:create`
- `rake db:migrate`
- `rails s`

# Facebook App IDの設定

https://developers.facebook.com/quickstarts/?platform=web からFacebookAppを作成し、IDとSecretを発行する。

ルートディレクトリに`.env`ファイルを作成して発行したID等を書く。
```
FACEBOOK_APP_ID="xxxxxxxxxxxxxx"
FACEBOOK_APP_SECRET="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
```

# DoorKeeper

ログインできたら `http://localhost:3000/oauth/applications` へアクセスしてアプリケーションを作成。

callback_urlには`integration-sample-ios://oauth-callback/ios`を指定。発行されたidやsecretはiOS側で使う。

諸々動かなかったら教えてほしいです。

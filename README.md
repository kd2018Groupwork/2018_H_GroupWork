# 2018_kd_GroupWork
グループワークのリポジトリです。

## 制約(必読)  
branch名は各自の出席番号で登録する (例: 0J02011 )  
PullRequestを送る際には簡単でいいので何を実装したかのメッセージを書きましょう  

例:)  
* ファイルを追加した  
`[Add] [FileName] [FileName] ..`  

* ファイルを変更した  
`[Change] [FileName] [FileName] ..`  

## Rails関連のメモ  
わかりにくそうで役に立つ情報を追加してください。  
* docker内のデータベースを更新する場合  
`docker-compose run web_rails rake db:migrate` 又は docker exec web_rails rake db:migrate

## コードをいじった後にやるコマンド  
```
$ git add 変更したファイル名(.でもあり)  
$ git commit -m "コメント"  
$ git push origin branch_name  
```

## rubyプロジェクト始め方

適当な場所に作業用ディレクトリを作成する  
`$ mkdir ディレクトリ名`  

作成したディレクトリに移動してプロジェクトをクローンする  
`$ git clone URL`  

クローンできたら作業用ブランチに変更(出席版後)  
masterブランチのままpushするとめんどくさいから必ずブランチを変える  
`$ git branch 0J00000`  
`$ git checkout 0J00000`  

ブランチを変更出来たらdockerでプロジェクトを始める  
`$ docker-compose up -d （-dはバックグラウンドで実行）`  

http://localhost:3000/ でruby_on_railsのサイトがでてきたらOK  
起動確認出来たら後は各自変更を加えてgithubに挙げる  

## GitコマンドTIPS

* gitの履歴やブランチ・ヘッドの状態をわかりやすく見たい
gitのエイリアスとして``` git graph ``` を登録
` $ git config --global alias.graph "log --graph --date-order --all --pretty=format:'%h %Cred%d %Cgreen%ad %Cblue%cn %Creset%s' --date=short" `

* 現在の変更を破棄して最新のコミットまで戻したい
` $ git checkout . `

* 最新のコミットを消さずに前のコミット時の内容確認したい
` $ git checkout HEAD^ `

## リポジトリのfork
開発元のリポジトリをforkすることで自分のリモートリポジトリにコピーされる  
forkすることにより間違えて開発元のmasterブランチにpushしてしまう等のリスクを軽減することができる  
ローカルでforkしたリポジトリを扱うにはローカルに新しいリポジトリを作成しgit cloneで取得する  
cloneした後の設定  
`$git remote add {適当な名前} fork元のpath` //名前は何でもいい(以下ではrootにしている)  


forkしたリポジトリでやること  
編集  
↓  
`$git add .`  
↓  
`$git commit -m "コメント"`  
↓  
`$git push origin master` //origin = forkしたリポジトリ  
↓  
プルリク  

fork元が変更あったとき  
`$git fetch root` //rootの変更取り込む root=fork元のリポジトリ  
↓  
`$git merge root/master`  
↓  
`$git push origin master` //origin = forkしたやつ  

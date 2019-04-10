#1.Task Maneger(Trello)
[Trello](https://trello.com/b/wbnLiA45/ef-lens)

Connect the bitbucket and Trello.
[Instructions](https://confluence.atlassian.com/bitbucket/trello-boards-in-bitbucket-935890052.html)


#2.Git Flow(commit agreement)
##2-1. Branch and commitment
Please write what will you do by branch name and add task ID to the comment when you commit. For example,

GLC-3: reducing size of export file

make a branch in the name of 
```
GLC-3_2018-09-26_reduce_export_file_size
```
and commit like the following comment.

  
####Example

```
[fix] GLC-3 revise the inconvenient that the remove flag isn't updated

Added for the target of update SQL isn't included in the remove flag. 
```


####Commitment agreement
```
1st line ：changed content summary（classification, ID, title）
2nd line：blank line
after 3rd line：the reson of change（content and detail rows）
```

####The kind of commitment
- **fix**：fixing bug
- **hotfix**：fixing critical bug
- **add**：adding the new (file) function
- **update**：updating a function(not bug)
- **change**：change of specification
- **clean**：cleaning（like refactoring）
- **disable**：disabling（like comment out）
- **remove**：removing（file）
- **upgrade**：upgrading version
- **revert**：revert a change 

####The kind of frequently use
- **fix**：fixing bug
- **add**：adding the new (file) function
- **update**：updating a function(not bug)
- **remove**：removing（file）


After finishing the revision, push and pull request from bitbucket.

###Follow
1. Make a branch
2. Commit and push.
3. Pull request.

make commitment detailed as possible and also make a message detailed.
Don't use the Japanese text for the name of the branch.

##2-2. merge
checkout the branch of pull request

merge that branch to the latest develop branch
  
develop branch merge for QA -> 
staging branch merge(for client OTA) -> 
master branch merge (for final submission)


make the author of the branch resolve the conflict if it happens at that time.

check the implementation or revision.
If there is a problem, dismiss the pull request.
merge to the develop branch if there is no problem.
basically, developers make a branch from the latest develop branch when they make it. And update your branch after being updated the develop branch.

only senior or lead or manager(s) are allowed to merge to develop, staging and production branch.

---

#3. Trello Outline of subject

##3-1. Type/Kind/Lable(The kind of subject)
- **bug**: bug
- **enhancement**: improvement
- **proposal**: proposal
- **task**: task

##3-2. Status/Workflow/List(The current status of subject)
- **new**: new(no one starts doing)
- **open**: open(someone starts doing)
- **on hold**: on hold
- **resolved**: resolved
- **closed**: closed(close the review of subject)

##3-3. watch of task
whether you'll receive the notification regarding the subject

---

#4. The way to make the task

##4-0. The list to make
basically, make the "NEW" list and surely add the ID to the title

##4-1. Label
select the kind of task type

##4-2. Member
Select the person in charge of the task.

##4-3. Checklist
Make the milestone to be needed to finish the task.

##4-4. Term
input the date expected to finish and time.

##4-5. Attached file
basically, use G-drive and attach a file.

#5.The way to start Task

---

##5-1. start a task
move a task to "OPEN" list

##5-2-1. finish a task
move a task "RESOLVED" list

##5-2-2. Association of commitment
associate a commitment by using the POWER-UP Bitbucket function of a task
 
##5-3. Close a task
A manager reviews a task and moves it to "CLOSED" list when if there is no problem

##5-4. Put a task "ON HOLD" list
Write a reason on the comment in the case that putting a task on hold, and move to "ON HOLD" list

##5-5. Edit a task
Expired the term and when postponing it, surely write a reason for a comment.[/info]

---------


#JAPANESE VERSION
#1.タスク管理ツール(Trello)
[Trello](https://trello.com/b/wbnLiA45/ef-lens)

Bitbucket と Trelloを連携させる.
[連携手順](https://ja.confluence.atlassian.com/bitbucket/trello-boards-in-bitbucket-935890052.html)

---

#2.Git Flow(コミット規約)
##2-1. ブランチとコミット
ブランチ名で何をやるかを書いてコミット時にタスクのIDをコメントに入れて下さい。 例えば、

GLC-3: exportファイルの軽量化
の課題を行うときは 
```
GLC-3_2018-09-26_reduce_export_file_size 
```
とか言うブランチ名でブランチを作って、下記の様なコメントでコミットします。


####Example

```
[add] GLC-3: exportファイルの軽量化

ほにゃらをほげほげした。 
```

####コミットコメントの規約
```
1行目：変更内容の要約（種別、ID、タイトル）
2行目 ：空行
3行目以降：変更した理由（内容、詳細）
```

####コミット種別
- **fix**：バグ修正
- **hotfix**：クリティカルなバグ修正
- **add**：新規（ファイル）機能追加
- **update**：機能修正（バグではない）
- **change**：仕様変更
- **clean**：整理（リファクタリング等）
- **disable**：無効化（コメントアウト等）
- **remove**：削除（ファイル）
- **upgrade**：バージョンアップ
- **revert**：変更取り消し

####よく使用する種別
- **fix**：バグ修正
- **add**：新規（ファイル）機能追加
- **update**：機能修正（バグではない）
- **remove**：削除（ファイル）

修正終わったらpushしてbitbucketからpull requestして下さい。

####フロー
1. ブランチを作る
2. コミットしてプッシュする。
3. プルリクする。

コミットはできるだけ細かく、メッセージは詳しくです。
ブランチ名に日本語は絶対に使わない

##2-2. マージ
プルリクエストのブランチをチェックアウト

そのブランチに最新のmasterをマージする

develop branch merge (社内検証用) -> 
staging branch merge(クライアント OTA用) -> 
master branch merge (本番環境用)

その時にコンフリクトしたらブランチの作者にコンフリクトを解決して貰う。

実装や修正をチェックする。
問題があればプルリクエストを却下する
問題が無ければdevelop branch にマージする。
基本的に開発者はブランチを作るときに最新のdevelop branch から作ります。 
また、develop branch がアップデートされたら自分のブランチもアップデートして下さい。

staging branch merge(クライアント OTA用) とmaster branch merge (本番環境用)には管理者のみマージを可能とします。

---


#3. Trello 課題の概要

##3-1. Type/Kind/Lable(課題の種類)
- **bug**: バグ
- **enhancement**: 改良
- **proposal**: 提案
- **task**: 作業

##3-2. ステータス/Workflow/List(課題の現在の状態)
- **new**: 新規(誰も着手していない)
- **open**: オープン(着手中)
- **on hold**: 保留中
- **resolved**: 解決済み
- **closed**: クローズ(解題を終了させる)

##3-3. タスクのウォッチ
課題に関する通知を受け取るか否か

---

#4.タスクの作成方法

##4-0.作成リスト
基本は「NEW」リストで作成し、タイトルは必ずIDをつける

##4-1.ラベル
タスクの種類を選択する

##4-2.メンバー
タスクの担当者を選択する

##4-3.チェックリスト
タスクを完了する為に必要となるマイルストーンを作成

##4-4.期限
完了見込みの日付と時間を入力

##4-5.添付ファイル
基本G-driveを使用し、ファイルを添付する

---

#5.実施方法

##5-1.タスクを実施
タスクを「OPEN」へ移動する

##5-2-1.タスクを完了
タスクを「RESOLVED」へ移動する

##5-2-2.コミットの紐付け
タスクのPOWER-UP機能を使用し、コミットを紐付けする

##5-3.タスクをクローズ
マネージャーがタスクをレビューし、問題なければタスクを「CLOSED」へ移動

##5-4.タスクを保留
タスクを保留にする場合その理由をコメントへ記載し、「ON HOLD」へ移動させる

##5-5.タスクの編集
期限が間に合わず、期限を延長する場合は必ずコメントに理由を記載する
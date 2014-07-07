Contributing
===========

# 一度だけやること

- github のアカウントを作る
- https://github.com/hiwane/qe_problems にアクセス
- fork する
[fork する](https://cloud.githubusercontent.com/assets/7787544/3478895/877bdd94-0347-11e4-97c3-e97c4d93d08a.png)
- 自分のアカウント(xxxxx)ページにアクセスする
    - https://github.com/xxxxx/qe_problems
	- copy する
	- SyNRAC アカウントの場合
    [copy する](https://cloud.githubusercontent.com/assets/7787544/3478896/877c1a7a-0347-11e4-9c44-270f61a48640.png)
- `git clone`, `git remote add` する
```sh
% git clone git@github.com:xxxxx/qe_problems.git
% cd qe_problems
% git remote add upstream https://github.com/hiwane/qe_problems.git
```


# 毎回やること

- 最新版を取得する
```sh
% git checkout master
% git pull upstream master
```
- 作業用のブランチを切る (yyyyy は好きな名前)
```sh
% git checkout -b yyyyy
```
- 編集する
```sh
% edit file.mpl
% git add file.mpl
% git commit
% ....
% .... 直前のコミットを修正 git commit --amend
% .... もっと昔のから〜     git rebase -i ...
```
- push する
```sh
% git push origin yyyyy
```
- pull request する
    - github の自分のアカウントにアクセス (https://github.com/xxxxx/qe_problems)
	- pull request のボタンがでているはず
	- コメントを追加して, pull request!





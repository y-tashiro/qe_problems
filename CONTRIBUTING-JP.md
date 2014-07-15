Contributing
===========

# 一度だけやること

- github のアカウントを作る
- https://github.com/hiwane/qe_problems にアクセス
- fork する
![fork する](https://cloud.githubusercontent.com/assets/7787544/3497117/bccfbb2a-05e8-11e4-9c1e-8a68c47dce45.png)
- 自分のアカウント(xxxxx)ページにアクセスする
    - https://github.com/xxxxx/qe_problems
	- copy する
	- SyNRAC アカウントの場合
    ![copy する](https://cloud.githubusercontent.com/assets/7787544/3497119/bcda76f0-05e8-11e4-814e-927d80a0c02e.png)
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
	![PR1](https://cloud.githubusercontent.com/assets/7787544/3497118/bcd0ec98-05e8-11e4-9b16-70f68c8a999e.png)
	- コメントを追加して, pull request!
	![PR2](https://cloud.githubusercontent.com/assets/7787544/3497116/bccca3b8-05e8-11e4-8952-2d350874afb6.png)





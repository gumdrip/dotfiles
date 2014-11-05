dotfiles
========

準備
  $ cd                                      <br>
$ mkdir dotfiles                      <br>
$ mv .vimrc dotfiles                      <br>
$ mv .gvimrc dotfiles                      <br>
$ mv .bashrc dotfiles                      <br>
$ mv .bash_profile dotfiles                      <br>
$ mv .vim dotfiles                      <br>
$ mv .gitconfig dotfiles                      <br>
$ mv .gitconfig_global dotfiles                      <br>

#Githubをブラウザで開く
dotfilesレポジトリを作成

dotfilesディレクトリ内にdotfilesLink.sh作成
$ mkdir dotfilesLink.sh

$ vim dotfilesLink.sh                                       <br>
入力↓                                                        <br>
#! /bin/bash                                                  <br>
ln -s ~/dotfiles/.vimrc ~/.vimrc                               <br>
ln -s ~/dotfiles/.gvimrc ~/.gvimrc                              <br>
ln -s ~/dotfiles/.bashrc ~/.bashrc                               <br>
ln -s ~/dotfiles/.bash_profile ~/.bash_profile                    <br>
ln -s ~/dotfiles/.vim ~/.vim                                       <br>
ln -s ~/dotfiles/.gitconfig ~/.gitconfig                             <br>
ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global              <br>

コマンド実行
$ chmod +x dotfilesLink.sh
$ ./dotfilesLink.sh

#レポジトリをつくる

cd ~/dotfiles
git init
touch README
git add README
git commit -m 'first_commit'

~/dotfiles ディレクトリ構成

~/dotfiles                  <br>
├── .git                     <br>
├── .gitignore                  <br>
├── .vim                            <br>
│   ├── .netrwhist                      <br>
│   ├── bundle                              <br>
│   ├── autoload                                <br>
│   └── userautoload                                <br>
│       ├── basic.vim                                   <br>
│       ├── color.vim                                       <br>
│       ├── editor.vim                                          <br>
│       ├── func.vim                                                <br>
│       ├── mapping.vim                                                 <br>
│       └── neobundle.vim                                                   <br>
└── .vimrc                                                                      <br>

.vim/bundleは同期しないように.gitignoreに書いておく。
$ vi ~/dotfiles/.gitignore

ファイルに書いて保存する。

.vim/bundle/
.vim/.netrwhist


.vimrcに下記を設定する

 
"分割した設定ファイルを全て読み込む
set runtimepath+=~/.vim/
runtime! userautoload/*.vim


NeoBundleの導入

.vim/bundle配下にプラグインを入れる。

$ mkdir -p ~/.vim/bundle
$ git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim


dotfilesのファイルを更新した際は更新をコミットした後にプッシュしてgithubに送り込みます。

$ git add .
$ git commit -m "enything"
$ git push origin master
新規のファイルが無い場合は以下で代用できます。

$ git commit -a -m "enything"
$ git push origin master


$ git push       ファイルの編集をしたら
$ git pull    同期する方法


他のコンピュータからgit cloneして設定を持ってきます。

$ git clone add https://github.com/your_name/dotfiles.git



同期したくないものを間違えて同期した場合

$ git rm [削除したいファイル]
$ git rm -r [削除したいディレクトリ]
$ git rm —cached [削除したいファイル] ファイルを残したまま管理対象から外す
   

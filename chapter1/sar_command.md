`sar` コマンドは Ubuntu 22.04 ではデフォルトでインストールされていませんでした。  
インストールするためには `sysstat` をインストールする必要があります。

```shell
$ sudo apt-get install sysstat
```

`sudo apt-get install sar` と実行してもインストールできないので注意が必要です。

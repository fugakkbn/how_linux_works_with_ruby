書籍中で使われたコマンドの説明を書いています。  
個人的に知らなったもののみを書いているため、書籍中で使われていてもここには書いていない場合があります。

## strace
プロセスが発行しているシステムコールを記録するコマンド。
`-o` オプションに続けて出力先ファイル名を、最後にコマンドを指定します。

```shell
$ strace -o hello.log ./chapter1/hello.rb
```

## sar
論理 CPU が実行している命令の割合を出力する。
`-P 0` の部分が論理 CPU0 のデータを採取するという意味で、次の 1 が 1 秒ごとに採取という意味、最後の 1 が 1 回だけデータを採取するという意味。

```shell
$ sar -P 0 1 1
Linux 5.15.79.1-microsoft-standard-WSL2 (Legion-fuga)   01/01/2023      _x86_64_        (20 CPU)

05:37:14 PM     CPU     %user     %nice   %system   %iowait    %steal     %idle
05:37:15 PM       0      0.00      0.00      0.00      0.00      0.00    100.00
Average:          0      0.00      0.00      0.00      0.00      0.00    100.00
```

## taskset
指定したコマンドを指定の論理 CPU で実行させる。
`taskset -c <論理CPU番号> <コマンド>` の形で使用する。

```shell
$ taskset -c 0 ./chapter1/syscall-inf-loop.rb
```

## ldd
プログラムがどのようなライブラリをリンクしているかを出力するコマンド。
以下は `echo` コマンドに対して実行した結果。

```shell
$ ldd /bin/echo
        linux-vdso.so.1 (0x00007ffe63fdf000)
        libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f39b2ab6000)
        /lib64/ld-linux-x86-64.so.2 (0x00007f39b2cf1000)
```

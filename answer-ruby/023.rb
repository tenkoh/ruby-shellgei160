# 先にシェル上で休止プロセスを用意しておく
pid = 5583
Process.kill(:CONT, pid)

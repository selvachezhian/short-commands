# short-commands

##find service by port

[source](/check_port.sh)

with this method you can find which process is running on specif port

paste source into your ```.bashrc``` or ```.bash_alias```

then run the below command

```bash
check 8080
```

```bash
COMMAND   PID USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
java    95249  sl1  217u  IPv6 0xdd0ab40cfb262b67      0t0  TCP *:http-alt (LISTEN)
```
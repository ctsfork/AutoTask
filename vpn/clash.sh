#!/usr/bin/env bash

# 切换进入当前目录
toProjectDir()
{
    path=$0
    first=${path:0:1}
    if [[ $first == "/" ]]; then
        path=${path%/*}
        cd "$path"
    fi
}
toProjectDir
clear


# dir=$(pwd)
# echo $dir

mkdir -p list-yaml
cd list-yaml


curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/github.free.sync/all.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "github.free.sync.all.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/github.free.sync/ss.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "github.free.sync.ss.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/github.free.sync/trojan.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "github.free.sync.trojan.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/github.free.sync/vmess.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "github.free.sync.vmess.yaml"


curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/github.free.merge/all.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "github.free.merge.all.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/github.free.merge/ss.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "github.free.merge.ss.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/github.free.merge/trojan.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "github.free.merge.trojan.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/github.free.merge/vmess.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "github.free.merge.vmess.yaml"


curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/freefq.com/all.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "freefq.com.all.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/freefq.com/ss.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "freefq.com.ss.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/freefq.com/ssr.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "freefq.com.ssr.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/freefq.com/trojan.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "freefq.com.trojan.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/freefq.com/vmess.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "freefq.com.vmess.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/freefq.com/vless.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "freefq.com.vless.yaml"


curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/youneed.win/all.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "youneed.win.all.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/youneed.win/ss.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "youneed.win.ss.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/youneed.win/ssr.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "youneed.win.ssr.yaml"
curl "http://127.0.0.1:25500/sub?target=clashr&url=http://127.0.0.1:25505/youneed.win/vmess.base64&insert=false&list=false&emoji=true&sort=true&fdn=true&tfo=true&udp=true&scv=false&tls13=true&append_type=true" > "youneed.win.vmess.yaml"



### 拷贝到archive
cd ..
cd ..
pwd
mkdir -p archive/vpn/
cp -r vpn/list archive/vpn/
cp -r vpn/list-yaml archive/vpn/
cp -r vpn/index.html archive/vpn/




### 退出程序 subconverter 与 vpn parser
# curl http://127.0.0.1:25505/exit
# curl http://127.0.0.1:25500/exit

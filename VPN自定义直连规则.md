### VPN直连规则添加

一： **自定义-直连.list**   规则文件，在subconverter/rules目录下创建。 \
二： **自定义-直连.list**   规则文件中添加需要直连的站点 \
三： 将**自定义-直连.list**规则文件添加到配置中：
```
//subconverter/snippets/rulesets.txt
🎯 全球直连,rules/自定义-直连.list

//subconverter/snippets/rulesets.toml
[[rulesets]]
group = "🎯 全球直连"
ruleset = "rules/自定义-直连.list"

```
四：重新请求订阅链接
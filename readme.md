# 这是我的lazynvim配置文件
    | - jetbrains文件夹中包含了jetbrain IDE的配置和额外的主题配置
    | - 额外是原本的lazynvim starter template，自己有逐步在修改
## 好吧，我奋战了将近三个小时，曲线救国打开了浏览器，用的方法是：脚本中打开windows的firefox，指定一个url，这个url是MarkdownPreview渲染打开的默认url，然后再映射一个keymap，到执行一个lua函数，函数内容是执行
```sh
:MarkdownPreview
cd ~/
sh open_fire.sh
```

// 命令相关
1. 输出当前buffer所在路径：echo expand('%:p:h')
2. 输出命令结果到一个新的buffer：enew|pu=execute('hi')

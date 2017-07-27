


# Task:部署一个你自己的google

### step1
在gitbash中输入：

    ssh root@the.server.ip.address

根据提示输入服务器密码进入服务器

创建一个以自己姓名拼音为名称（如 小明就创建`xiaoming`文件夹）的文件夹，并进入该文件夹

### step2
在浏览器地址栏中输入 https://github.com/Humbertzhang/TinyGoogle
到达仓库页面，点击右上角的Fork，将仓库Fork到自己的账号下面

在自己账号的仓库中，点击Clone or download ,复制该仓库的地址。

在gitbash中输入
git clone 再将仓库地址复制到这句命令后面，等待克隆完毕

克隆完毕后进入TinyGoogle文件夹

### step3
修改docker-compose.yml文件

    vim docker-compose.yml
（在vim编辑器中一切都要用英文输入法输入）

在键盘上点 i 键来进入vim编辑器的编辑模式。

此时你可以通过上下左右键来控制光标的位置。

按照接下来的gif所展示的地方来修改端口，将6040修改成从6100 到 9999之间的任意一个数字，注意要修改command后面和ports下面两处，并且这两处修改成的数字都一样。

在键盘上点左上角的Esc键来退出vim编辑器的编辑模式。

此时输入 `:wq` 来退出并保存工作vim编辑器。

对vim感兴趣的可以[看下这里](http://www.jianshu.com/p/5767c86ffa25)
【GIF】
### step4
此时你应该又回到了命令行中
输入以下命令：

    docker-compose build
    docker-compose up

若之前操作没有错你应该会看到：

【Picture】

如果错了，再使用vim进入docker-compose.yml,跟原来仓库中的docker-compose.yml对比一下看看有没有格式上的错误。

### step5
此时，打开浏览器，在浏览器中输入 the.server.ip.adderss:port,
其中port是你刚才在docker-compose.yml中修改成的数字。

就可以看到你刚才部署到服务器上的网页了！尝试使用你部署上去的TinyGoogle搜索一下你感兴趣的内容吧~（如果搜索地很慢甚至根本搜索不到，不是你的问题，这个原来就很容易卡住）

截图，将你的github地址和这张图片发给我们

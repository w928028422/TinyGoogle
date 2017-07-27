


# Task:部署一个你自己的Google

平时我们使用Google需要翻墙，如果部署一个属于自己的TinyGoogle就可以不需翻墙也能使用Google，根据以下步骤用docker部署既简单又高效，赶快学起来吧(ง •̀_•́)ง 。 
这是效果图 ![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-27%2015.49.57.png)
### step1
在gitbash中输入：

    ssh root@the.server.ip.address

根据提示输入服务器密码进入服务器

创建一个以自己姓名拼音为名称（如 小明就创建`xiaoming`文件夹）的文件夹，并进入该文件夹 （ 了解Linux常用命令 --> [点我](http://blog.csdn.net/ljianhui/article/details/11100625/) ) 

### step2
在浏览器地址栏中输入 https://github.com/Humbertzhang/TinyGoogle 或 https://github.com/yuyilei/TinyGoogle   
到达仓库页面，点击右上角的Fork，将仓库Fork到自己的账号下面 

在自己账号的仓库中，点击Clone or download ,复制该仓库的地址。

在git bash中输入
git clone 再将仓库地址复制到这句命令后面，等待克隆完毕

克隆完毕后进入TinyGoogle文件夹

### step3
修改docker-compose.yml文件

    vim docker-compose.yml
（在vim编辑器中一切都要用英文输入法输入）

在键盘上点 i 键来进入vim编辑器的编辑模式。(了解vim的四种模式 --> [点我](http://www.cnblogs.com/zzqcn/p/4619012.html))

此时你可以通过上下左右键来控制光标的位置。

按照接下来的gif所展示的地方来修改端口，将6040修改成从6100 到 9999之间的任意一个数字，注意要修改command后面和ports下面两处，并且这两处修改成的数字都一样。

在键盘上点左上角的Esc键来退出vim编辑器的编辑模式。

此时输入 `:wq` 来退出并保存工作vim编辑器。

对vim感兴趣的可以[点我](http://www.jianshu.com/p/5767c86ffa25)
【GIF】
### step4
此时你应该又回到了命令行中
输入以下命令：

    docker-compose build   --> 创建或重新构建，每次修改docker-compose.yml之后都需要重新构建 
成功标志 ： 
![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-27%2017.02.57.png)

    docker-compose up   --> 启动容器  
    
若之前操作没有错你应该会看到：
![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-27%2017.04.18.png) 

这就代表容器已经启动了 ，此时已经打开浏览器，可以使用 the.server.ip.adderss：port ，即服务器IP地址加端口号访问你的TonyGoogle了

如果错了，再使用vim进入docker-compose.yml,跟原来仓库中的docker-compose.yml对比一下看看有没有格式上的错误。 

如果想要一直能够访问，使用 
    
    docker-compose up &  -->  在后台运行 
常用命令查看docker容器运行状态  

    docker ps --> 查看正在运行的容器，课查看容器ID
    docker ps -a --> 查看所有容器 
    dock而 start <ID> --> 后加容器ID，启动已经存在的容器作为一个服务
    docker stop <ID> --> 后加容器的ID，关闭容器 
    docker rm <ID> --> 后加容器的ID，删除容器 
    docker logs <ID> --> 查看容器日志 

### step5 

打开 etc/hosts文件,加入 the.server.ip.adderss tinygoogle.for.fun    -->如图 ![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-27%2016.41.56.png)   

前面那串被点号分隔的数组是本服务器的IP地址  （了解dns域名解析 --> [点我](http://blog.chinaunix.net/uid-28216282-id-3757849.html) 
然后保存 

### step6
此时，打开浏览器，在浏览器中输入 tinygoogle.for.fun:port,
其中port是你刚才在docker-compose.yml中修改的端口号。


就可以看到你刚才部署到服务器上的网页了！尝试使用你部署上去的TinyGoogle搜索一下你感兴趣的内容吧~（如果搜索地很慢甚至根本搜索不到，不是你的问题，这个原来就很容易卡住）

截图，用markdown的格式写下你对每个步骤的理解，过程中遇到的问题，如何解决这些问题，推到你的GitHub仓库上  (了解git基本命令 --> [点我](http://www.ruanyifeng.com/blog/2015/12/git-cheat-sheet.html) )
请将仓库地址和截图发给我们 

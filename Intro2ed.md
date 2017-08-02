# Task:The First Step On The Backend!

平时我们使用Google需要翻墙，如果部署一个属于自己的TinyGoogle就可以不需翻墙也能尝试使用Google，根据以下部署步骤既简单又高效，赶快学起来吧(ง •̀_•́)ง 。 
这是效果图 ![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-27%2015.49.57.png)

### step0
下载百度网盘连接中的文件，按照gitbash.docx中的指引安装git bash,了解基本的命令。   下载地址--> [git bash](http://pan.baidu.com/s/1slWFqqD)

那么什么是git bash呢 : 

```
git 
版本控制工具，支持该工具的网站有Github、BitBucket、Gitorious、国内的osChina仓库、csdn仓库等等，这些网站都是代码托管的网站。
shell
是linux、unix系统的用户界面，也可以理解为命令行，就是你输入并执行命令的地方，git通过命令行和图形界面两种方式使用shell。
bash
是shell的一种，最常用的shell之一。
git Bash
方便你在windows下使用git以及一些其他命令的模拟终端（windows自带的cmd功能太弱....windows就有点弱23333）linux、ＭacOS可以直接在Terminal(终端程序)中使用git以及一下命令。
```

申请一个github帐号,如果不会就百度吧！
根据[这篇文章](http://www.jianshu.com/p/19a3e78aafd0)来了解如何使用git版本控制工具

### step1
在gitbash中输入：

    ssh root@39.108.79.110

根据提示输入服务器密码（Hack4muxi）进入服务器

创建一个以自己姓名拼音为名称（如 小明就创建`xiaoming`文件夹）的文件夹，并进入该文件夹 （ 了解Linux常用命令 --> [点我](http://blog.csdn.net/ljianhui/article/details/11100625/) )  
这个步骤是登陆服务器那么什么是登陆服务器呢 ： 

```
服务器：
服务器的本质就是计算机，但是它能被其他计算机访问，为其它计算机提供某些服务。
ssh：
简单说，SSH是一种网络协议，用于计算机之间的加密登录。以上这个命令利用ssh连接，从你的计算机远程登陆到服务器上，之后一切的操作都是在服务器上进行。

```
登陆服务器 -->  如图 ： 
![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-31%2015.08.31.png)

注意输入的密码是不显示的,然后接下来的操作都在服务器啦

### step2

在浏览器地址栏中输入 https://github.com/Humbertzhang/TinyGoogle 或 https://github.com/yuyilei/TinyGoogle   
到达仓库页面，点击右上角的Fork，将仓库Fork到自己的账号下面

![fork.png](https://storage1.cuntuku.com/2017/07/31/fork.png)
-
-
在自己账号的仓库中，点击Clone or download ,复制该仓库的地址。
[![clone.png](https://storage2.cuntuku.com/2017/07/31/clone.png)](https://cuntuku.com/image/4Komo)
在git bash中输入
git clone 再将仓库地址复制到这句命令后面，等待克隆完毕

克隆完毕后进入TinyGoogle文件夹. 
--> 如图 ： 
![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-31%2015.19.15.png) 


### step3
在命令行中输入　python app.py  来运行app.py 程序
按照提示输入端口号,程序便能运行起来
--> 如图 
![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-31%2015.31.50.png)  

使用ctrl+c可以停止它


### step4
打开任意一个浏览器，在浏览器中输入 39.108.79.110:port    
其中port是你在step3中输入的那个数字,便能看到你刚才部署上去的网站了！
尝试使用你部署上去的TinyGoogle搜索一下你感兴趣的内容吧~（如果搜索地很慢甚至根本搜索不到，不是你的问题，这个原来就因为 Google Custom Search 自身的原因很慢，就像这样，请求超时 --> 如图 ： 
![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-31%2015.54.25.png)

### step5 
也可以使用gunicorn 启动，文件夹下有个 tinygoogle.sh脚本，直接运行脚本 ： 

```
./tinygoogle.sh 
``` 
这样就是运行成功了 --> 如图 
![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-31%2016.07.40.png) 
根据提示输入port,便可以通过39.108.79.110:port来访问，将你实现的结果截图
同样可以用ctrl+c来停止 


### step6 
这一步帮助你理解路由，URL和视图函数之间的关系，哈哈
首先你要知道什么事路由，什么是视图函数 
 ```
 路由： 
 程序需要知道每个URL请求运行哪些代码，所以保存了一个URL到一个python函数的映射关系，处理URL和函数之间的关系的程序就是路由 
 URL ： 统一资源定位符，像www.baidu.com 就是一个URL 
 视图函数：  
 某一个URL对应的处理程序
 ```
 下面是一个小例子 ： 在app.py里面有一个路由：
 
 ![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-08-02%2023.29.12.png) 
 
 当你在浏览器中访问 39.108.79.110:port/hello/ 时，你会得到这样的返回：
 -->如图
 ![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-08-02%2023.30.44.png)  
 
 当你访问39.108.79.110:port/hello/时，这个URL已经绑定到hello这个函数上，所以就会运行hello函数作为URL的处理函数，他们之间形成了一种映射关系 
 
 我们可以看到app.py里面还有一个路由： 
 
 ![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-08-02%2023.40.25.png) 
 
 思考如何利用这个路由实现，如下效果： 
 --> 如图 
 ![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-08-02%2023.41.26.png)      
将你实现的结果截图，发给我们


## 最后 
用markdown的格式写下你对每个步骤的理解，过程中遇到的问题，如何解决这些问题，推到你的GitHub仓库上  (了解git基本命令 --> [点我](http://www.ruanyifeng.com/blog/2015/12/git-cheat-sheet.html))
请将仓库地址和截图发给我们 。

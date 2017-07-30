# Task:部署一个你自己的Google

平时我们使用Google需要翻墙，如果部署一个属于自己的TinyGoogle就可以不需翻墙也能使用Google，根据以下步骤用docker部署既简单又高效，赶快学起来吧(ง •̀_•́)ง 。 
这是效果图 ![](https://github.com/yuyilei/TinyGoogle/blob/master/picture/屏幕快照%202017-07-27%2015.49.57.png)

### step0
下载百度网盘连接中的文件，按照gitbash.docx中的指引安装gitbash,了解基本的命令
自行百度申请一个github帐号,并根据[这篇文章](www.jianshu.com/p/19a3e78aafd0)来了解如何使用命令行版的git

### step1
在gitbash中输入：

    ssh root@39.108.79.110:4001

根据提示输入服务器密码（Hack4muxi）进入服务器

创建一个以自己姓名拼音为名称（如 小明就创建`xiaoming`文件夹）的文件夹，并进入该文件夹 （ 了解Linux常用命令 --> [点我](http://blog.csdn.net/ljianhui/article/details/11100625/) ) 

### step2
在浏览器地址栏中输入 https://github.com/Humbertzhang/TinyGoogle 或 https://github.com/yuyilei/TinyGoogle   
到达仓库页面，点击右上角的Fork，将仓库Fork到自己的账号下面 

在自己账号的仓库中，点击Clone or download ,复制该仓库的地址。

在git bash中输入
git clone 再将仓库地址复制到这句命令后面，等待克隆完毕

克隆完毕后进入TinyGoogle文件夹

###　step3
在命令行中输入　python app.py  来运行app.py 程序
按照提示输入端口号,程序便能运行起来

### step4
打开任意一个浏览器，在浏览器中输入 39.108.79.110:port    
其中port是你在step3中输入的那个数字,便能看到你刚才部署上去的网站了！
尝试使用你部署上去的TinyGoogle搜索一下你感兴趣的内容吧~（如果搜索地很慢甚至根本搜索不到，不是你的问题，这个原来就因为 Google Custom Search 自身的原因很慢）


# 我不懂 Rails
## 前言

「我不懂XX」是一个系列的学习记录，在这个系列中我将记录集中一段时内学习某一个东西的全记录，并达到某一个特定的目标。「我不懂 Rails」是这个系列的第一部。这个系列的目标读者是有一年经验的开发人员。如果你也有学习 Rails 方面的问题需要讨论，有对我学习方向的建议和指导也可以发邮件与我讨论，我的邮箱地址是 `mail@li-xinyang.com` 。如果你发现文中的知识点描述错误或者错别字也欢迎提出 Pull Request 来修正，我会在第一时间将其合并。「我不懂 Rails」的 GitHub 仓库可以在[这里](https://github.com/li-xinyang/IDTK_Rails/tree/dev)找到。

<!-- 关注 [FrontSeat](https://github.com/frontseat) 的微信公众号来获得更新。 -->
<!-- （[Ruby China](https://ruby-china.org/) 同步更新） -->

<!-- ![FrontSeat QR Code](./img/QRCode.png) -->
## 笔者背景

[李忻阳](http://stackoverflow.com/cv/lixinyang)，25岁，混荡多年，钟爱科技，喜欢设计。
2014年[经济金融](https://www.rmit.edu.au/study-with-us/levels-of-study/undergraduate-study/bachelor-degrees/bp251)毕业，2015年[系统分析](https://www.iss.nus.edu.sg/graduate-programmes/programme/detail/graduate-diploma-in-systems-analysis)毕业生。
前端开发工作经验一年半， SPA 开发（涉及 Backbone，D3.js，React.js），用户界面设计，用户交互实现。后端服务开发短暂接触过 Java Spring， .NET，以及 Flask，有一定关系型（`SQL`）和文件型（`MongoDB`）数据库使用经验，远端平台使用过 Digital Ocean 以及 Heroku 。现在工作主要涉及的方面是快速原型开发和 API 实现。更多关于我开发学习经历的内容可以在[这里](http://udacity.li-xinyang.com/)找到。
## 学习目标

在众多的网站开发框架中选择 Rails 的理由是因为自己缺乏系统的网站开发的基础和经验，Rails 结合了网站开发中的最优开发流程和方式让我不会遗漏任何需要注意到的细节。
我的目标是在一年内的时间可以找到一个和 Rails 相关的工作来获得更多网络开发的经验。目标工作是 [Ruby Software Engineer (TradeGecko)](https://tradegecko.workable.com/jobs/192808) ，工作要求有有多年网络开发经验以及中级 Ruby 开发水平。
## 开始学习 Rails

在这个系列中我选择了最新的 Rails 版本 `5.0.0.1` （发布于 2016年8月）以及 `Ruby 2.3.1` 版本。在开始记录学习 Rails 过程之前已经完成了一些 Ruby 相关基础学习，其中包括 [Code School](https://www.codeschool.com/) 的 Ruby 以及 Rails 的基础教程和 [Learning Ruby The Hard Way](https://learnrubythehardway.org/) 的阅读和[练习](https://github.com/li-xinyang/FS_LearnRubyTheHardWay)。在接下来的整个学习 Rails 的过程中我不会强调操作系统，工具，相关知识也只会点到为止，更多的将着重与学习 Rails 的开发本身。

我所使用的全部资料都会给予出处而不在此记录中重新复述，这样可以保证任何时候看到的外部的信息都能够保持最新的版本，这也意味着读者需要有一定的英文阅读能力才可以依照我的学习路径进行学习。这个系列中只会记录我对于每一个知识点的理解，自己在理解这些知识点时使用的实例。
### 第 003 天（20161012）

学习 Rails 项目结构，理解初始后全部自动生成文件的功能。理解模型的简单使用和校验以及数据库迁移的方法，明白 `resources` 的基础含义。理解控制器和显示层的关系，并熟悉常用 View Helper Method，如`form_for`，`form_tag`，`link_to`。学习简单路由的映射。练习在不使用第三方 Gem 的情况下实现用户注册（不加密密码）登陆登出功能（`Session` 的基础使用方法）以及错误提示（`flash` 的基础使用）。

### 第 002 天（20161010）

在学习 Rails 的过程中社区推荐了很多书籍，在最后我选择了 [Rails 4 in Action](https://www.safaribooksonline.com/library/view/rails-4-in/9781617291098/) 这本书，原因是 [Agile Web Development with Rails](https://pragprog.com/book/rails4/agile-web-development-with-rails-4) 时间有些久远（最近已经[更新](https://pragprog.com/book/rails5/agile-web-development-with-rails-5)到 Rails 5 的版本），[Ruby On Rails Tutorial (Rails 5)](https://www.railstutorial.org/) 内容对有我来说有些碎锁。Rails 4 in Action 可以让我了解我整个 Rails 软件的开发流程和过程中需要使用的相关技术。看这本书一周进程过半却发现有些地方不清晰，所以现在重头再过一次理解第一遍没有看懂的地方。在完结这本书之后会回头来看 Rails 官方指南和迅速过一遍 Agile Web Development with Rails 。这一次的代码练习也将完全忽略样式着重 Rails 软件本身的开发，相关的 Gem 也不会过多的深究。

### 第 001 天（20161008）

**阅读 Rails 信条**

这是第三遍阅读 [The Rails Doctrine](http://rubyonrails.org/doctrine/) （[中文 Rails 信条](https://ruby-china.org/wiki/the-rails-doctrine)），[David Heinemeier Hansson](https://en.wikipedia.org/wiki/David_Heinemeier_Hansson) 阐述了 Rails 与其他网站开发框架不同的地方和他对于网络开发的理解。读后依旧还是有很多地方看不懂。在后面得某一天再将篇信条看一遍。

**安装 Ruby 环境**

我选择使用 [rbenv](https://github.com/rbenv/rbenv) 来管理 Ruby 环境，只是因为它比 [rvm](https://github.com/rvm/rvm) 星星多，用起来简单些，其余的我不知道有何区别。rbenv 在 [macOS](https://en.wikipedia.org/wiki/Mac_OS) 上可以通过 [Homebrew](https://github.com/Homebrew/brew) 直接安装。下面以 macOS 为例来安装完全新的 Ruby 环境，

```bash
# 安装 rbenv
brew install rbenv
# 安装 Ruby 2.3.1
rbenv install 2.3.1
# 设置全局 Ruby 版本
rbenv global 2.3.1
# 查看当前 Ruby 使用源
which ruby  
# -> /Users/li-xinyang/.rbenv/shims/ruby
# 查看当前 Ruby 版本
ruby --version  
# -> ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin16]
```

rbenv 在不同系统下安装以及使用方法可以在 rbenv 项目仓库 [README](https://github.com/rbenv/rbenv#installation) 中找到。

**Rails 教程（Rails Guide）**

学习 Rails 开发除去相关书籍和教程外，官方框架教程是必读的内容。因为它一定是最新最完整的涵盖了 Rails 框架开发人员认为新手需要知道并正确使用该框架的各个方面的知识。

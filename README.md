# 我不懂 Rails

## 前言

「我不懂某某」是一个系列的学习记录，在这个系列中我将记录集中一段时内学习某一个东西的全记录，并达到某一个特定的目标。「我不懂 Rails」是这个系列的第一部。这个系列的目标读者是有一定经验（一年）的开发人员。关注 [FrontSeat](https://github.com/frontseat) 的微信公众号来获得更新。

![FrontSeat QR Code](./img/QRCode.png)

## 作者背景

25岁，混荡多年，2014年[经济金融](https://www.rmit.edu.au/study-with-us/levels-of-study/undergraduate-study/bachelor-degrees/bp251)毕业，2015年[系统分析](https://www.iss.nus.edu.sg/graduate-programmes/programme/detail/graduate-diploma-in-systems-analysis)毕业生。前端开发工作经验一年，主要工作涉及的方面是快速原型开发和 API 实现。更多关于我开发学习经历的内容可以在[这里](http://udacity.li-xinyang.com/)找到。目标是成为一个技术商人。

## 学习目标

在众多的网站开发框架中选择 Rails 的理由是因为自己缺乏系统的网站开发的基础和经验，Rails 结合了网站开发中的最优开发流程和方式让我不会遗漏任何需要注意到的细节。
我的目标是在一年内的时间可以找到一个和 Rails 相关的工作来获得更多网络开发的经验。目标工作是 [Ruby Software Engineer (TradeGecko)](https://tradegecko.workable.com/jobs/192808) ，工作要求有有多年网络开发经验以及中级 Ruby 开发水平。

## 开始学习 Rails

### 第 001 天（20161008）

这是第三遍阅读 [The Rails Doctrine](http://rubyonrails.org/doctrine/) （[中文 Rails 信条](https://ruby-china.org/wiki/the-rails-doctrine)），它阐述了它与其他开发框架不同的地方和它对于网络开发的理解。依旧还是有很多地方看不懂。在后面得某一天再将篇信条看一遍。

**安装 Ruby 环境**

我选择使用 [rbenv](https://github.com/rbenv/rbenv) 来管理 Ruby 环境，只是因为它比 [rvm](https://github.com/rvm/rvm) 星星多一些其余的我不知道有何区别。rbenv 在 [macOS](https://en.wikipedia.org/wiki/Mac_OS) 上可以通过 [Homebrew](https://github.com/Homebrew/brew) 直接安装。下面以 macOS 为例来安装完全新的 Ruby 环境，

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

不同系统的关于安装以及使用方法可以在 rbenv 项目仓库 [README](https://github.com/rbenv/rbenv#installation) 中找到。

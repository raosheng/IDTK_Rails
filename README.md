# 我不懂 Rails
## 前言

「我不懂XX」是一个系列的学习记录，在这个系列中我将记录集中一段时内学习某一个东西的全记录，并达到某一个特定的目标。「我不懂 Rails」是这个系列的第一部。如果你也有学习 Rails 方面的问题需要讨论，有对我学习方向的建议和指导也可以发邮件与我讨论，我的邮箱地址是 `mail@li-xinyang.com` 。如果你发现文中的知识点描述错误或者错别字也欢迎提出 Pull Request 来修正，我会在第一时间将其合并。「我不懂 Rails」的 GitHub 仓库可以在[这里](https://github.com/li-xinyang/IDTK_Rails/tree/dev)找到。

<!-- 关注 [FrontSeat](https://github.com/frontseat) 的微信公众号来获得更新。 -->
<!-- （[Ruby China](https://ruby-china.org/) 同步更新） -->

<!-- ![FrontSeat QR Code](./img/QRCode.png) -->

## 笔者背景

[李忻阳](http://stackoverflow.com/cv/lixinyang)，25岁，混荡多年，钟爱科技，喜欢设计。
2014年[经济金融](https://www.rmit.edu.au/study-with-us/levels-of-study/undergraduate-study/bachelor-degrees/bp251)毕业，2015年[系统分析](https://www.iss.nus.edu.sg/graduate-programmes/programme/detail/graduate-diploma-in-systems-analysis)毕业生。
前端开发工作经验一年半， SPA 开发（涉及 Backbone，D3.js，React.js），用户界面设计，用户交互实现。后端服务开发短暂接触过 Java Spring， .NET，以及 Flask，有一定关系型（`SQL`）和文档型（`MongoDB`）数据库使用经验，远端平台使用过 Digital Ocean 以及 Heroku 。现在工作主要涉及的方面是快速原型开发和 API 实现。更多关于我开发学习经历的内容可以在[这里](http://udacity.li-xinyang.com/)找到。
## 学习目标

在众多的网站开发框架中选择 Rails 的理由是因为自己缺乏系统的网站开发的基础和经验，Rails 结合了网站开发中的最优开发流程和方式让我不会遗漏任何需要注意到的细节。
我的目标是在一年内的时间可以找到一个和 Rails 相关的工作来获得更多网络开发的经验。目标工作是 [Ruby Software Engineer (TradeGecko)](https://tradegecko.workable.com/jobs/192808) ，工作要求有有多年网络开发经验以及中级 Ruby 开发水平。
## 开始学习 Rails

在这个系列中我选择了最新的 Rails 版本 `5.0.0.1` （发布于 2016年8月）以及 `Ruby 2.3.1` 版本。在开始记录学习 Rails 过程之前已经完成了一些 Ruby 相关基础学习，其中包括 [Code School](https://www.codeschool.com/) 的 Ruby 以及 Rails 的基础教程和 [Learning Ruby The Hard Way](https://learnrubythehardway.org/) 的阅读和[练习](https://github.com/li-xinyang/FS_LearnRubyTheHardWay)。在接下来的整个学习 Rails 的过程中我不会强调操作系统，工具，相关知识也只会点到为止，更多的将着重与学习 Rails 的开发本身。

我所使用的全部资料都会给予出处，资料内容则不会在此记录中重新复述，这样可以保证任何时候浏览外部信息时都能够保持最新的资料版本。这个系列中只会记录我对于每一个知识点的理解和自己在理解知识点时所使用到的个别代码实例。
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
### 第 002 天（20161010）

在学习 Rails 的过程中社区推荐了很多书籍，在最后我选择了 [Rails 4 in Action](https://www.safaribooksonline.com/library/view/rails-4-in/9781617291098/) 这本书，原因是 [Agile Web Development with Rails](https://pragprog.com/book/rails4/agile-web-development-with-rails-4) 时间有些久远（最近已经[更新](https://pragprog.com/book/rails5/agile-web-development-with-rails-5)到 Rails 5 的版本），[Ruby On Rails Tutorial (Rails 5)](https://www.railstutorial.org/) 内容对有我来说有些碎锁。Rails 4 in Action 可以让我了解我整个 Rails 软件的开发流程和过程中需要使用的相关技术。看这本书一周进程过半却发现有些地方不清晰，所以现在重头再过一次理解第一遍没有看懂的地方。在完结这本书之后会回头来看 Rails 官方指南和迅速过一遍 Agile Web Development with Rails 。这一次的代码练习也将完全忽略样式着重 Rails 软件本身的开发，相关的 Gem 也不会过多的深究。

### 第 003 天（20161012）

学习 Rails 项目结构，理解初始后全部自动生成文件的功能。理解模型的简单使用和校验以及数据库迁移的方法，明白 `resources` 的基础含义。理解控制器和显示层的关系，并熟悉常用 View Helper Method，如`form_for`，`form_tag`，`link_to`。学习简单路由的映射。练习在不使用第三方 Gem 的情况下实现用户注册（不加密密码）登陆登出功能（`Session` 的基础使用方法）以及错误提示（`flash` 的基础使用），这部分功能的实现在 Ruby On Rails Tutorial (Rails 5) [第八章](https://www.railstutorial.org/book/sign_up)和[第九章](https://www.railstutorial.org/book/advanced_login)有提及。

使用 [bcrypt](https://github.com/codahale/bcrypt-ruby) 替换掉明文密码，并使用 [Capybara](https://github.com/jnicklas/capybara) 通过 [RSpec](https://github.com/rspec/rspec-rails) 添加 Acceptance Test （正常 [BDD](https://en.wikipedia.org/wiki/Behavior-driven_development) 的开发流程则应先完成需求测试后实现功能，之后的练习会使用正常 BDD 的方式来进行）。对于结合使用单元测试的方法现在还不清楚。

```ruby
# Routes
Rails.application.routes.draw do
  root "sessions#new"

  resources :users

  get    'signin',      to: "sessions#new"
  post   'signin',      to: "sessions#create"
  delete 'signout',     to: "sessions#destroy", as: 'signout'

  get    'feed',        to: "feed#index"
end

# User Model
class User < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }
  has_secure_password  # `gem 'bcrypt'` in Gemfile
end

# Users Controller
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User has been created successfully."
      redirect_to feed_path
    else
      flash[:notice] = "User has not been created."
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :password)
    end
end

# Sessions Controller
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to feed_path
    else
      flash[:notice] = "Invalid username/password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Successfuly sign out"
    redirect_to root_path
  end
end

```

```html
<!-- New User Form -->
<%= form_for @user, url: users_path, method: :post do |form| %>
  <%= form.text_field :name %>
  <%= form.password_field :password %>
  <%= form.submit %>
<% end %>
```

```html
<!-- Sign-in Form -->
<%= form_tag signin_path, method: :post do %>
  <%= text_field_tag :name %>
  <%= password_field_tag :password %>
  <%= submit_tag "Sign in" %>
<% end %>
```

使用 RSpec 替换默认 [minitest](https://github.com/seattlerb/minitest)，添加 Capybara Acceptance Test 并使用 [factory_girl_rails](https://github.com/thoughtbot/factory_girl) 生成测试数据。

```bash
# 执行下面的代码如果需要默认使用 RSpec 而不是 minitest
rails g rspec:install
```

```ruby
# DELETEME/spec/factories/user_factory.rb
# Factory Girl: User Factory
FactoryGirl.define do
  factory :user do
    name "SampleUser"
    password "SamplePassword"
  end
end

# DELETEME/spec/features/user_sign_in_spec.rb
# RSpec: Features Test
require 'rails_helper'

RSpec.feature 'User can sign in' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario "with valid credentials" do
    visit root_path
    fill_in "name", with: user.name
    fill_in "password", with: user.password
    click_button "Sign in"

    expect(page).to have_content "Successfully sign in"
    expect(page).to have_content 'Feed'
    expect(page).to have_current_path(feed_path)
  end

  scenario "unless with invalid credentials" do
    visit root_path
    fill_in "name", with: user.name
    fill_in "password", with: ''
    click_button 'Sign in'

    expect(page).to have_content "Invalid username/password"
    expect(page).to have_current_path(signin_path)
  end
end
```
### 第 004 天（20161013）

理解 `before_action`， 它将会在 Rails 5 中完全[代替](https://github.com/rails/rails/commit/9d62e04838f01f5589fa50b0baa480d60c815e2c)旧的 [`before_filter`](https://github.com/rails/rails/blob/v5.0.0.beta2/actionpack/lib/abstract_controller/callbacks.rb#L190-L193)。了解学习 `ActionView` 中常用的帮助函数（Helper Methods）的存在和使用方法。`layout`，`view` 以及 `partial` 之间的关系和使用方法。

使用 [Guard](https://github.com/guard/guard) 来跑 RSpec 测试代码，虽然还没有弄清楚文件更改自动跑测试的规则（暂时使用 [guard-rspec](https://github.com/guard/guard-rspec)），一键跑全部的测试也比手动输入测试命令要快许多。

学习基础 `content_for` 与 `yield(:content_for_item)` 的使用方法。

Rails 4 in Action 中写 Feature Test 样例的方式有些奇怪不太符合正常的表达逻辑，所以昨天我将情景（scenario）做了一些修改。下面的代码片段是书中的示例，

```ruby
require "rails_helper"

RSpec.feature "Users can create new projects" do
  before do
    visit root_path
    click_link "New Project"
  end

  scenario "with valid attributes" do
    fill_in "Name", with: "New Project Name"
    fill_in "Description", with: "New project description"
    click_button "Create Project"

    expect(page).to have_content "Project has been created."
    expect(page).to have_content "New Project Name"
    expect(page).to have_content "New project description"

    project = Project.find_by(name: "New Project Name")
    expect(page.current_url).to eq project_url(project)
    expect(page).to have_title "New Project Name - Projects - Ticketee"
  end

  scenario "with providing invalid attributes" do
    fill_in "Name", with: ""
    fill_in "Description", with: ""
    click_button "Create Project"

    expect(page).to have_content "Project has not been created."
    expect(page).to have_content "Name can't be blank"
  end
end
```

输出的结果为如下片段，

```bash
Failures:

  1) Users can create new projects with providing invalid attributes
```

看起来没有逻辑的原因是 RSpec 将 Feature 与 Scenario 连在一起写了，其正确的理解应该为在 “Users can create new projects” 功能下的 “with providing invalid attributes” 的情况。这里需要查看更多成熟项目的 Cypabara 的 Feature Test 代码来了解正确的使用方法。参考这篇来自 Throughtbot 的 [How We Test Rails Applications](https://robots.thoughtbot.com/how-we-test-rails-applications#feature-specs)（2014） 中的写法 Feature 为一个功能而 Scenario 则应该为完整句子的独立场景。那么上面的输出就应该是下面的样子（我添加冒号让两个区域的关系更加明显），

```bash
Failures:

  1) Users can create new projects: they use invalid attributes
```

这篇文章还同样提到 Feature Test 不能完全替代单元测试，因为它慢所以更多测试应该在模块对应的测试中完成。Rails 4 in Action 中暂时还没有涉及到模型，视图和控制器的测试这些测试方法和测试过程都会在之后的学习过程中被再次提及。两本相关的书籍为 [Rails 4 Test Prescriptions](https://www.safaribooksonline.com/library/view/rails-4-test/9781680500493/) 和 [RSpec Essentials](https://www.safaribooksonline.com/library/view/rspec-essentials/9781784395902/) 。

控制器在保存模型实例时如果出现了错误，错误的信息会被保存到实例对象之中既 `@object_instance.errors` 中。


### 第 005 天（20161014）

添加 [Travis-CI](https://travis-ci.org/) 自动同步更新在 Ruby China 的同名主题。打算在掌握基础 Rails 后学习 Ruby China 社区源码。

第四遍阅读 [The Rails Doctrine](https://ruby-china.org/topics/31249)，这次的版本来自于 Ruby China 社区。其中提到了 [Flow: The Psychology of Optimal Experience](https://www.amazon.com/Flow-Harper-Perennial-Modern-Classics-ebook/dp/B000W94FE6) 这本书。

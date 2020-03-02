### 同步说明

通过 [rcm](https://github.com/thoughtbot/rcm) 对配置文件（dotfiles）进行管理：

+ 安装 rcm
  ```BASH
  sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
  sudo apt-get update
  sudo apt-get install rcm
  ```
+ rcm 命令一览，详细说明及常见问题参照 [rcm — dotfile management](https://thoughtbot.github.io/rcm/rcm.7.html)

  + **mkrc**：添加配置文件到 rcm 创建的文件夹 $HOME/.dotfiles 中，支持一次添加多个配置文件
  ```BASH
  mkrc dotfile1 dotfile2 dotfile3
  ```
  + **lsrc**：显示已经添加的配置文件及文件的位置信息
  + **rcup**：将 $HOME/.dotfiles 中的配置文件应用于当前系统
  
+ 如何在另一台电脑上使用我的配置文件呢？同步流程
  1. 执行 mkrc 添加配置文件到 $HOME/.dotfiles
  2. 将 .dotfiles 文件夹初始化为 git 仓库，并上传至 github
  3. 在另一台电脑上安装 rcm，下载仓库
  4. 执行 rcup 生成配置文件

+ 为什么添加 .bash_history 和 .zsh_history 到 rcm? 又把它们添加到 .gitignore 呢？
  + 自动提示类的插件依赖于上述文件，添加以提供无缝体验，但是默认不同步


### 配置文件详情
> 💡：使用 @import 语句需安装 vscode 插件 Markdown Preview Enhanced
1. npmrc
@import "./npmrc"

2. zshrc 
@import "./zshrc"

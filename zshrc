# 看这里：https://mechanical-consciousness.com/2018/10/19/wsl-quick-setup-zh.html

# 设置文件权限为 755
umask 022

export ZSH="/home/Henry/.oh-my-zsh"

# 确保使用 pip3 install --user packageName 安装的包能够全局访问
export PATH=$PATH:~/.local/bin

# 修改了 npm(/usr/bin) 的全局安装目录为 .npm-global，确保 npm　包能够全局访问
export PATH=$PATH:~/.npm-global/bin

# 清除默认添加在 wsl 中的 windows 环境变量，不清除会导致 pipenv 指定 Python 版本创建虚拟环境失败
export PATH=`echo $PATH | sed 's/:\/mnt\/c\/[^:]*//g'`

# java
export JAVA_HOME=/usr/lib/jvm/jdk-13.0.2
export CLASSPATH=.:$JAVA_HOME/lib
export PATH=$PATH:$JAVA_HOME/bin

# alias
# pipenv
# 运行当前脚本
alias prp="pipenv run python"

# wsl 使用代理
alias proxy='export http_proxy=socks5://127.0.0.1:10808; export https_proxy=socks5://127.0.0.1:10808'
alias unproxy='unset http_proxy; unset https_proxy'

# 使用 proxychains 强制给定程序发起的TCP连接通过事先配置的代理，即代理端口 10809
alias pc='proxychains'
alias win='cd /mnt/c/Users/23243/'

# zsh
ZSH_THEME="ys"

plugins=(git sudo z zsh-syntax-highlighting zsh-autosuggestions zsh-completions autojump)

source $ZSH/oh-my-zsh.sh


# the fuck
autoload -U compinit && compinit

eval $(thefuck --alias)

# gvm
[[ -s "/home/Henry/.gvm/scripts/gvm" ]] && source "/home/Henry/.gvm/scripts/gvm"

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm-global/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# xfc4
export DISPLAY=:0.0

# pure 终端主题
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
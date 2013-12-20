# .bash_profile
# User specific aliases and functions
export PATH=/home/zhenhe.yk/python2.7/bin:$PATH
export DJANGO_SETTINGS_MODULE=django_hello.settings
export PYTHONPATH=/home/zhenhe.yk/django_hello:$PYTHONPATH
export PATH=/home/zhenhe.yk/protobuf/bin:$PATH
export PATH=/home/zhenhe.yk/git/bin:$PATH
export PATH=/home/zhenhe.yk/graphviz/bin:$PATH
export PATH=/home/zhenhe.yk/zsh/bin:$PATH
export PATH=/home/zhenhe.yk/tmux/bin:$PATH
export PATH=/home/zhenhe.yk/sqlite3/bin:$PATH
export PATH=/home/zhenhe.yk/svn/bin:$PATH
alias utf8='export LANG=en_US.UTF8;export LC_ALL=en_US.UTF8;'
alias gbk='export LANG=zh_CN.gbk;export LC_ALL=en_US.GBK;'
alias tm='tmux attach || tmux'
alias sc='screen -r || screen'
utf8

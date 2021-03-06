# prompt
export PS1='\[\e[0;31m\]\u\e[0;35m\]@\e[0;34m\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '

# alias
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'

# enviromnent variable 
export EDITOR="/usr/bin/vim"
export LANG='ja_JP.UTF-8'
export LC_ALL='ja_JP.UTF-8'
export LC_MESSAGES='ja_JP.UTF-8'
export PATH=$PATH:$HOME/local/bin/

# histroy
function share_history {  # 以下の内容を関数として定義
    history -a            # .bash_historyに前回コマンドを1行追記
    history -c            # 端末ローカルの履歴を一旦消去
    history -r            # .bash_historyから履歴を読み込み直す
}
PROMPT_COMMAND='share_history'             # 上記関数をプロンプト毎に自動実施
shopt -u histappend                        # .bash_history追記モードは不要なのでOFFに
export HISTTIMEFORMAT='%Y/%m/%d %H:%M:%S ' # hisotryに日時追加
export HISTSIZE=9999                       # 履歴のMAX保存数を指定

# english dictionary
function dic() {
   if [ $# != 0 ]; then
      w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa" | less +28
   else
      w3m "http://www.alc.co.jp/"
  fi
}

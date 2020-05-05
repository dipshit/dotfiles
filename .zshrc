DEFAULT_USER=kirin
export ZSH="$HOME/.oh-my-zsh"
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export EDITOR=nvim

ZSH_THEME=powerlevel10k/powerlevel10k

export UPDATE_ZSH_DAYS=5

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  colorize
  colored-man-pages
  docker-compose
  docker
)

source $ZSH/oh-my-zsh.sh

#source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
#source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'


if [ ! -d ~/.zsh-syntax-highlighting ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting
fi

if [ ! -d ~/.zsh-autosuggestions ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh-autosuggestions
fi

if [ ! -d ~/.zsh-history-substring-search ]; then
  git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.zsh-history-substring-search
fi

source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh-history-substring-search/zsh-history-substring-search.zsh

#kubectl-short-aliases
alias k=kubectl
complete -o default -F __start_kubectl k

alias v=nvim
alias vi=nvim
alias git=hub
alias t=tmux
alias fd=fdfind

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
export PATH="/usr/local/opt/ruby/bin:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-1.14.0-openjdk-amd64"

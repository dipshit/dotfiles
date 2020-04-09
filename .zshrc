DEFAULT_USER=kirin
export ZSH="/Users/kirin/.oh-my-zsh"
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin
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

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

#kubectl-short-aliases
alias k=kubectl
complete -o default -F __start_kubectl k

alias v=nvim
alias git=hub

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
export PATH="/usr/local/opt/ruby/bin:$PATH"

#export LDFLAGS="-L/usr/local/opt/openssl/lib"
#export CPPFLAGS="-I/usr/local/opt/openssl/include"

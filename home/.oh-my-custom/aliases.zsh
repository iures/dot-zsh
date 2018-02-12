alias vi=vim


#tmux
alias tmux='tmux -2'

#rails
alias be="bundle exec"
alias bes="be rspec"
alias bef="be foreman start"

#elasticsearch
alias els="ssh -C2qTnN -D 8080 10.1.2.95"

#git
alias gpu="git pull"
alias gpo="git push origin"
alias gpow="git push origin;ccme watch &"
alias gci="git ci"
alias gcim="git ci -am"
alias gms="git merge --squash"
alias ga="git add ."
alias gpr="hub pull-request"
alias gst="git st"
alias gstf="gst -s | sed 's/\ [A-Z]\ //'"
alias glsf="git ls-files | grep "
alias gcob="git checkout --track -b"
alias gbes="gst --porcelain | grep spec | sed \"s/M  //g\" | xargs bundle exec rspec"
alias gtall="gst --porcelain | grep feature | sed \"s/M  //g\" | xargs ./cucumber"
alias gall="find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;"
alias gclean="git branch -r | grep origin\/is- | sed 's/origin\//':'/' | xargs git push origin"
alias gshow="hub browse -u crowdtap"

#kubectl
alias k="kubectl"
alias kc='kubectl exec -ti `kubectl get -o=custom-columns=NAME:.metadata.name --no-headers=true pods | fzf | tr -d "\n"` bundle exec rails c'
alias kpc='kubectl exec -ti `kubectl get -o=custom-columns=NAME:.metadata.name --no-headers=true pods | grep ${PWD##*/} | fzf | tr -d "\n"` bundle exec rails c'
alias kgg="kubectl get pods | grep"
alias kp="kubectl get -o=custom-columns=NAME:.metadata.name --no-headers=true pods | fzf | tr -d '\n'"
alias kpo='kubectl get po | grep ${PWD##*/}'
alias kbash='kubectl exec -ti `kubectl get -o=custom-columns=NAME:.metadata.name --no-headers=true pods | fzf | tr -d "\n"` bash'
alias kbashp='kubectl exec -ti `kubectl get -o=custom-columns=NAME:.metadata.name --no-headers=true pods | fzf | tr -d "\n" | tee >(pbcopy)` bash'
alias kti='kubectl exec -ti'
alias kgd='kubectl get deployment | fzf | sed "s/ .*//" | tr -d "\n" | pbcopy'
alias ksd='kubectl label po `kubectl get -o=custom-columns=NAME:.metadata.name --no-headers=true po | fzf | tr -d "\n"` app- debug=true --overwrite=true'
alias kd='kubectl exec -ti `kubectl get -o=custom-columns=NAME:.metadata.name --no-headers=true -l debug=true pods | fzf | tr -d "\n"` bundle exec rails c'
alias kdb='kubectl exec -ti `kubectl get -o=custom-columns=NAME:.metadata.name --no-headers=true -l debug=true pods | fzf | tr -d "\n"` bash'
alias kdp="kubectl get -o=custom-columns=NAME:.metadata.name --no-headers=true -l debug=true pods | fzf | tr -d '\n' | tee >(pbcopy) | NUL"
alias kgs="kubectl get pods --sort-by='.status.containerStatuses[0].restartCount'"
alias kdel="kubectl delete pod"
source <(kubectl completion zsh)

#jq
alias jqip="jq '.[] | .[] | .Instances | .[] | .NetworkInterfaces | .[] | .PrivateIpAddress'"


#utils
alias ea="vim ~/.zshrc-mine;source ~/.zshrc-mine"
alias ep="vim ~/.profile;source ~/.profile"
alias ev="vim ~/.vimrc;"
alias eh="sudo vim /etc/hosts;"
alias ftree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"
alias hr='printf "%$(tput cols)s\n"|tr " " "="'
alias HR='printf "%$(tput cols)s\n" `date`|tr " " "="'
alias ff="find . -iname"
alias dud="du -hsm * | fzf | cut -d$'\t' -f2 | xargs rm"

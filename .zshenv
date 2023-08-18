export GPG_TTY=$(tty)
export PATH=$HOME/.dev-tools/flutter/bin:$PATH

# go binary
export PATH=$HOME/go/bin:$PATH

# add local bin
export PATH=$HOME/.local/bin:$PATH

# resend stuff
export RESEND_API_KEY=$(pass RESEND_API_KEY)

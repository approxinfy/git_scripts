# configure git with SSH keys on Windows through git bash
. ssh-keygen -t ed25519 -C "ishna.official@gmail.com"
. eval "$(ssh-agent -s)"
. ssh-add ~/.ssh/id_ed25519
. clip < ~/.ssh/id_ed25519.pub

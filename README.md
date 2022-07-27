# configure git with SSH keys on Windows through git bash
ssh-keygen -t ed25519 -C "ishna.official@gmail.com"<br/>
eval "$(ssh-agent -s)"<br/>
ssh-add ~/.ssh/id_ed25519<br/>
clip < ~/.ssh/id_ed25519.pub<br/>

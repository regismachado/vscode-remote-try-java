echo "Load zsh script"
source /root/.zshrc

echo "Install dev libs with asdf"
asdf plugin add python
asdf plugin add java
asdf plugin add scala
asdf plugin add sbt
asdf plugin add maven
asdf plugin add gradle
asdf plugin add nodejs

asdf install python 3.7.5
asdf global python 3.7.5

asdf install java adoptopenjdk-8.0.265+1.openj9-0.21.0
asdf global java adoptopenjdk-8.0.265+1.openj9-0.21.0

asdf install scala 2.11.12
asdf global scala 2.11.12
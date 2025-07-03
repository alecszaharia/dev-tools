## Run PHP/Composer/SymfonyCli from docker

### Add to your `~/.bashrc` or `~/.zshrc`

```bash
alias php='docker run --rm -it -v $(pwd):/app --user $(id -u):$(id -g) -w /app tools:latest php $@'
alias composer='docker run --rm -it -v $HOME/.composer:/root/.composer -v $HOME/.symfony5:/root/.symfony5 -v $(pwd):/app --user $(id -u):$(id -g) -w /app tools:latest composer $@'
alias symfony='docker run --rm -it -v $HOME/.composer:/root/.composer -v $HOME/.symfony5:/root/.symfony5 -v $(pwd):/app --user $(id -u):$(id -g) -w /app tools:latest symfony $@'
```
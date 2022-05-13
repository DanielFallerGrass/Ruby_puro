# Ruby_puro

Instalação Ubunto:

1.1 Preparando nosso ambiente – Ubuntu

Os passos a seguir são para a instalação no Ubuntu 18.10.
Caso possua outra versão, você pode seguir os passos da sessão de instalação do ruby no link https://gorails.com/setup/ubuntu/18.10.

Abra seu terminal e instale a ferramenta rbenv por meio dos seguintes comandos.

```console
cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
```

O rbenv nos permite instalar uma nova versão do ruby de forma simples.

Para verificar se tudo ocorreu bem execute
```console
rbenv --version
```

Com o rbenv funcionando, instale a versão 2.5 do ruby

```console
rbenv install 2.5.1
rbenv global 2.5.1
```

1. Certifique-se que o ruby realmente está em sua máquina com o comando

```console
ruby --version
```

Instalação no ubuntu ✔

# Dicas valiosas:

---
* Include: Injeta os métodos para ser chamado com uma instância. (Test.new.hello)

* Extend: Injeta os métodos para ser chamado com a classe. (Test.hello)

---

We have already seen literals: every time we type an object directly into Ruby code, we are using a literal. Literals create objects which are used in the program.

|Ruby Literals include |
|:-----------------------:|
| Numbers               |
| Strings               |
| Symbols               |
| Arrays                |
| Hashes                |
| Ranges                |
| Regular Expressions   |
| Procs                 |

Booleans and nil:

* nil and false are both false values.
* nil is used to indicate "no value" or "unknown" but evaluates to false in conditional expressions.
* true is a true value.
* All objects except nil and false evaluate to a true value in conditional expressions.

Types of strings in ruby:

| Types  |	Description |
|--------|--------------|
|%i      |	Array of Symbols  |
|%q      |	String            |
|%r      |	Regular Expression|
|%s      |	Symbol            |
|%w      |	Array of Strings  |
|%x      |	Backtick (capture subshell result)|


O `%w` Ajuda para não precisarmos escrever tudo com aspas e vígula.

Bad Code:   a = ["ant", "bee", "cat", "dog", "elk"]   #saída de a => ["ant", "bee", "cat", "dog", "elk"] 
Good Code:  a = %w[ant bee cat dog elk]               #saída de a => ["ant", "bee", "cat", "dog", "elk"] 
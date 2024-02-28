# openai_script

# 使い方
1. 自身の `.zshrc` などに `OPENAI_API_KEY` を設定。
2. 以下を実行で質問できる。
```
ruby openai_script.rb {質問内容}
```

# メモ
`.zshrc` とかに alias を指定しておくと楽。
```
alias ai="ruby openai_script.rb"
```

```
ai {質問内容}
```
みたいな感じで使える

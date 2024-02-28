# openai_script

# 使い方
1. ルートディレクトリに `key.rb` を作成し、以下のメソッドを定義
```
def get_key
  "自身の OPENAI の API キー"
end
```
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

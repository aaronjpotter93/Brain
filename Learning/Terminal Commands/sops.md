#encryption #decryption #secure #secrets #tokens #keys

#### To Encrypt
```zsh
sops --encrypt --age=YOUR_PUBKEY source.yaml > target.enc.yaml
```

#### To Decrypt
```zsh
sops --decrypt vault/dev-example.enc.yaml
```

[Ranger Cheatsheet](https://gist.github.com/heroheman/aba73e47443340c35526755ef79647eb)
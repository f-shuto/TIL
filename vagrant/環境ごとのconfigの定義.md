# やりたいこと
- vagrantでdevelopment、staging、productionなど複数環境を管理したい
- production環境は、``vagrant up``で起動したくない

# 参考
https://www.vagrantup.com/docs/multi-machine/#autostart-machines

# やり方
以下のように ``autostart: false`` オプションを付けることで、
``vagrant up``で development と staging のみ起動できるようになる。
production を起動する場合は、``vagrant up production`` と明示的に環境を指定する。

```Ruby
# autostart: false オプション指定無し
config.vm.define :development do |development|
~
end

# autostart: false オプション指定無し
config.vm.define :staging do |staging|
~
end

# autostart: false オプション指定あり
config.vm.define :production, autostart: false do |production |
~
end
```
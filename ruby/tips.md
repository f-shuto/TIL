- スタックサイズの指定

```ruby
ENV[Z='RUBY_THREAD_VM_STACK_SIZE']||exec({Z=>'50000000'},'ruby',$0)
```

# Custom modules
To add a custom module you need to create them in ~/.config/bdwmb/modules directory.

Proper way of creating a module:

**We will create a module called "test" in this semi tutorial with a type of shellscript**

1. go into your `~/.config/bdwmb/modules` directory:
```bash
cd ~/.config/bdwmb/modules
```

2. make a new module:
```bash
vim test
```

3. add a shbang to the file:
```bash
#!/bin/sh
```

4. write the main function:
```bash
btest() {
}
```

5. in the function, let's greet the user:
```bash
printf 'welcome, %s' "$USER"
```

6. add the module to our modules in our `~/.config/bdwmb/config.sh`:
```bash
export MODULES=('test')
```

7. done, here's our final source code:

**~/.config/bdwmb/modules/test**
```bash
#!/bin/sh

btest() {
    printf 'welcome, %s' "$USER"
}
```


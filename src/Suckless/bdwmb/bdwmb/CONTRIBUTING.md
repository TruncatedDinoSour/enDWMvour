# How to contribute your own modules?
1. Do not make your modules harmful.
2. Add documentation with a name of MODULE_{MODULE\_NAME}.md in the `/doc` directory.
4. Your documentation should look something like this:

```md
# Module - {MODULE_NAME}
{WHAT THE MODULE DOES}

{CODE BLOCK START}
NAME: {MODULE_NAME}
DEPENDENCIES: {MODULE DEPENDENDENCIES}
TYPE: {MODULE TYPE (I.e bash script, shell script, python script, ...)}
{CODE BLOCK END}

## Setup
{HOW TO SET IT UP}

{EXTRA STUFF}
```

5. Your module's main function has to be named `b{MODULE_NAME}`. for example if the module is named `hi` the main function should be `bhi`.
6. Test your modules before committing


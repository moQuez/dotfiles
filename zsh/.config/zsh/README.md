# ZSH Config

## Files

Zsh read these files in the following order:

1. env - Should only contain user’s environment variables.
2. profile - Can be used to execute commands just after logging in.
3. rc - Should be used for the shell configuration and for executing commands.
  - aliases - A file containing all the aliases.
  - completions - A file containing the completion configuration
4. login - Same purpose than .zprofile, but read just after .zshrc.
5. logout - Can be used to execute commands when a shell exit.

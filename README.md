# Laravel Autocomplete

This script provides autocomplete functionality for Laravel commands. With this script installed, you can easily autocomplete Laravel commands like `migrate:fresh`, `route:list`, and more using the Tab key.

## Getting Started

### Prerequisites

Before you can use this script, you'll need to have the following installed:

- Bash shell (usually installed by default on Linux and Mac)

### Installing

1. Download the `laravel-completion.bash` file from this repository.
2. Place this file in a directory where it won't be deleted (e.g. `/usr/local/etc`).
3. Change the `/path/to/` in the script to the directory where you placed the script. Save It!
4. Make the file executable by running `chmod +x laravel-completion.bash`.
5. Execute then script by running `./laravel-completion.bash` and paste `_laravel_completions_install` in your shell.

## Useful Commands
To install the script, run the following command:
```bash
_laravel_completions_install
```

To uninstall the script, run the following command:
```bash
_laravel_completions_uninstall
```

To update the script, run the following command:
```bash
_laravel_completions_update
```

### Usage
Once this script is installed, you can use Tab to autocomplete Laravel commands in your terminal. For Example:
```bash
php artisan mig[TAB]
```

Example of autocomplete in action:
![img.png](https://i.imgur.com/DrOnsQH.png)
You can also use TAB to autocomplete command options and arguments etc.

## Contributing
If you find any bugs or have any suggestions, please open an issue or pull request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
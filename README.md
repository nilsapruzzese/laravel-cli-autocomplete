# Laravel Autocomplete

This script provides autocomplete functionality for Laravel commands. With this script installed, you can easily autocomplete Laravel commands like `migrate:fresh`, `route:list`, and more using the Tab key.

## Getting Started

### Prerequisites

Before you can use this script, you'll need to have the following installed:

- Bash shell (usually installed by default on Linux and Mac)
- Laravel CLI (installed via Composer)

### Installing

1. Download the `laravel-completion.bash` file from this repository.
2. Place this file in a directory where it won't be deleted (e.g. `/usr/local/etc`).
3. Open your shell configuration file (usually `~/.bashrc` or `~/.bash_profile`). If you don't have one, create it.
4. Add the following line to your shell configuration file:
    ```bash
    source /path/to/laravel-completion.bash
    ```
   Replace `/path/to/` with the actual path to the `laravel-completion.bash` file.
5. Save the file and restart your shell configuration (e.g. `source ~/.bashrc` or `source ~/.bash_profile`).

### Usage
Once this script is installed, you can use Tab to autocomplete Laravel commands in your terminal. For Example:
```bash
php artisan mig[TAB]
```

Example of autocomplete in action:
![img.png](https://i.imgur.com/DrOnsQH.png)
You can also use TAB to autocomplete command options and arguments etc.

### Uninstalling
To uninstall the script, simply remove the line you added to your shell configuration file and delete the `laravel-completion.bash` file.

## Contributing
If you find any bugs or have any suggestions, please open an issue or pull request.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
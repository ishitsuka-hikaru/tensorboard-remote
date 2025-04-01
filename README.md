# tensorboard-remote
A remote TensorBoard server launcher.


## File Structure
```bash
tensorboard-remote/
├── README.md
├── poetry.lock
├── pyproject.toml
├── run_tensorboard.sh
└── tensorboard_remote
    └── __init__.py
```


## Environment Setup
1. Install Poetry and update it
    Run the following commands:
    ```bash
    curl -sSL https://install.python-poetry.org | python3 -
    poetry self update
    ```

2. Add Poetry to your PATH
    Append the following line to your `./bashrc` file:
    ```bash
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
    ```
    Ten reload your shell:
    ```bash
    source ~/.bashrc
    ```

3. Install project dependencies
    In the project directory, run:
    ```bash
    poetry install
    ```
    This will create a virtual environment and install the required packages.



## Usage
1. Directly via Poetry:
    ```bash
    poetry run tensorboard --logdir={LOG_PATH} --host=0.0.0.0 --port={PORT}
    ```
    Replace {LOG_PATH} with the path to your log files and {PORT} with the desired port number.
    
2. Using the provided shell script:
   ```bash
   ./run_tensorboard.sh
   ```
   Make sure the script has execute permissions:
   ```bash
   chmod +x run_tensorboard.sh
   ```

After starting the server, open your web browser and navigate to:
- `http://{HOST}:{PORT}`
Replace {HOST} with your server’s IP address or hostname, and {PORT} with the port number you specified


## Additional Notes
- Remote Access:
    When accessing the server remotely, ensure that the specified port is open on your firewall. Alternatively, consider setting up an SSH tunnel if direct access is not available.
- TensorFlow Dependency:
    If TensorBoard reports that TensorFlow is not installed, some advanced features may be limited. To enable full functionality, install TensorFlow with:
    ```bash
    poetry add tensorflow
    ```

## References
- [TensorBoard Official Documentation][tensorboard]
- [Poetry Official Documentation][poetry]

[tensorboard]: https://www.tensorflow.org/tensorboard
[poetry]: https://python-poetry.org/docs/

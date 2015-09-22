# vim-hdl-examples

An example project to demonstrate the usage of [vim-hdl][vim-hdl].

# Usage

1. Check the ModelSim® version you have installed (any version should work)

    ```bash
    vcom -version
    Model Technology ModelSim ALTERA vcom 10.3c Compiler 2014.09 Sep 20 2014
    ```

2. Install [vim-hdl][vim-hdl] and [Syntastic][Syntastic]

3. Clone this repository

    ```bash
    mkdir ~/temp/
    cd ~/temp/
    git clone https://github.com/suoto/vim-hdl-examples.git
    ```

4. Open a VHD from this repository

    ```bash
    vim another_library/foo.vhd
    ```

5. Select the project file

    ```viml
    let g:vimhdl_conf_file = 'example.conf'
    ```

6. Save the file to run the plugin

    ```viml
    :w
    ```

## Issues

You can use the [vim-hdl issue tracker][issue_tracker] for bugs, feature request and so on.

## License

This software is licensed under the [GPL v3 license][gpl].

## Notice

Mentor Graphics®, ModelSim® and their respective logos are trademarks or registered trademarks of Mentor Graphics, Inc.

Altera® and its logo is a trademark or registered trademark of Altera Corporation.

vim-hdl's author has no connection or affiliation to any of the trademarks mentioned or used by this software.

[Syntastic]: https://github.com/scrooloose/syntastic
[vim-hdl]: https://github.com/suoto/vim-hdl/
[gpl]: http://www.gnu.org/copyleft/gpl.html
[issue_tracker]: https://github.com/suoto/vim-hdl/issues



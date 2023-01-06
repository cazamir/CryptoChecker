<p align="center">
  <img src="https://i.imgur.com/Jrxh6Nt.png" alt="https://i.imgur.com/Jrxh6Nt.png" class="transparent">
</p>

## Preface
Full project files for CryptoChecker.

This is *not* a ready-to-use program, it is missing a lot of core features and has a multitude of issues. As such it is highly recommended that you do not use this if you have no prior programming knowledge or a lack of programming knowledge in general.

## Known issues
- Unoptimized code.

## FAQ

### How do I use it?
To use CryptoChecker you first have to have a linux command line with bash installed, and then you have to have docker.<br />
After you've checked you have both of those, while in the CryptoChecker directory type "make start" in the command line. If this does not work and gives you a error, make sure Make is installed, to install Make here are some common package manager commands you can use: <br />
+ [Pacman](https://bit.ly/3w0TSgB) <br />
* [Homebrew](https://bit.ly/3VNJzXC) <br />
- [Apt](https://bit.ly/3IKqXoD) <br />
+ [Zypper](https://bit.ly/3CtxRKV) <br />
* [Nix](https://bit.ly/3QgUQyp) <br />

After installing the Make package you can execute "make start" once again. Once it has built all you need to do is forward the port you set it up with (default: 80) and go to localhost:port.

### How do I add it to the tor network?
If you want to proxy this to the tor network all you need to do is use the docker image [dperson/torproxy](https://bit.ly/3IKrNlh) then add the following code to the file ["docker-compose.yml"](https://bit.ly/3jPn5Ih):

```
tor:
    image: dperson/torproxy
    ports:
      - "9050:9050"
      - "80:80"
    environment:
      - ALLOWED_IP_RANGES=0.0.0.0/0
      - HIDDEN_SERVICE_DIR=/var/lib/tor/hidden_service
      - HIDDEN_SERVICE_PORT=80
      - HIDDEN_SERVICE_V3=1
    volumes:
      - /var/lib/tor/hidden_service:/var/lib/tor/hidden_service
      - /etc/localtime:/etc/localtime:ro
      
    volumes:
      - /var/run/docker.sock:/tmp/docker.sock:ro
```
      
And make sure to change "80:80" and "80" to the port you are using. (default: 80)

### Why am I getting errors?
The most common errors are from un-installed packages, before using CryptoChecker make sure you have these packages installed on your linux server: <br />
Make <br />
Docker <br />
If you are still getting errors even after installing these linux packages please create a [issue.](https://github.com/cazamir/CryptoChecker/issues)


## Credits
- [new.css](https://github.com/xz/new.css-site) <br />
- [Coindesk](https://coindesk.com)

## License
Licensed under the GNU General Public License v3.0. See [LICENSE](https://github.com/stellar/CryptoChecker/blob/master/LICENSE) for more details.

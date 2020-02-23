[![Build Status](https://travis-ci.com/eshamster/try-test-in-docker.svg?token=iyjMkbymh2qKutWVzm5i&branch=master)](https://travis-ci.com/eshamster/try-test-in-docker)

# try-test-in-docker

## Usage

If you want test your Common Lisp project under the following conditions, copy `.travis.yml` and `test-docker` folder to your project. Then, register your project to Travis CI.

- Docker: [eshamster/cl-base](https://hub.docker.com/repository/docker/eshamster/cl-base)
- Test library: [fukamachi/rove](https://github.com/fukamachi/rove)
- Common Lisp implementations
    - SBCL (`sbcl-bin`)
    - Clozure CL (`ccl-bin`)

If you want to add (delete) some Common Lisp implementations that can be installed using `ros install` (command of [Roswell](https://github.com/roswell/roswell)), edit the following files after copying.

- `.travis.yml`: Add (Delete) implementation to the following matrix
  ```yml
  env:
    matrix:
      - LISP=sbcl-bin
      - LISP=ccl-bin
  ```
- `test-docker/Dockerfile`: Add (Delete) `ros install` to the following `RUN` command
  ```dockerfile
  RUN ros install ccl-bin && \
      ros install rove
  ```

## License

These codes are licensed under CC0.

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)

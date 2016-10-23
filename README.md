% Image de base pour la compilation de projets C/C++ sous alpine
% Didier Richard
% rév. 0.0.1 du 23/10/2016

---

# Building #

```bash
$ docker build -t dgricci/build-alpine:3.4.4 -t dgricci/build-alpine:latest .
```

## Behind a proxy (e.g. 10.0.4.2:3128) ##

```bash
$ docker build \
    --build-arg http_proxy=http://10.0.4.2:3128/ \
    --build-arg https_proxy=http://10.0.4.2:3128/ \
    -t dgricci/build-alpine:3.4.4 -t dgricci/build-alpine:latest .
```     

# Use #

See `dgricci/alpine` README for handling permissions with dockers volumes.

_Information_ : it is worth to note that the `libtool` package depends upon
`bash` ... The later is then installed in this image !

## Tests ##

```bash
$ docker run -it --rm dgricci/build-alpine gcc --version
gcc (Alpine 5.3.0) 5.3.0
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

__Et voilà !__


_fin du document[^pandoc_gen]_

[^pandoc_gen]: document généré via $ `pandoc -V fontsize=10pt -V geometry:"top=2cm, bottom=2cm, left=1cm, right=1cm" -s -N --toc -o build-alpine.pdf README.md`{.bash}


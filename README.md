# Objection docker container

Docker container for working with [Objection toolkit](https://github.com/sensepost/objection)

# Quick start

```shell
$ git clone https://github.com/Android-Guards/objection-docker.git
$ ./build.sh
$ ./run.sh
```

# Know issues

## macOS

Unfortunatelly you can not passthrough your USB connection to the container([details](https://github.com/docker/for-mac/issues/5263)). To defeat this trouble you can connect to remote frida server using `--network` option.

```shell
# On the host machine
$ adb shell "su -c /system/bin/frida-server -l 0.0.0.0:1337 &"

# In the container
$ objection -N -h <mobile-device-ip> -p 1337 <other options...>
```
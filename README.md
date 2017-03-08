About
=====

A docker image to build FrostedOS

Run
===

    $ docker run -it zoobab/frostedos-docker
    Flash size: 1048576 - SRAM size: 262144
    VNC server running on ::1:5900
    
            ============================================
                     Frosted shell - aka "Fresh"
            --------------------------------------------
                         Licensed under GPL
            ============================================
    
    
    Current pid = 5
    root@frosted / # ps
    Command not found.
    root@frosted / # help
    Command not found.
    root@frosted / # ?
    Command not found.
    root@frosted / #
    Built-in commands:
             cd getenv pwd setenv
    root@frosted / #
    Built-in commands:
             cd getenv pwd setenv
    root@frosted / # ls
    mnt
    bin
    mem
    sys
    dev
    root@frosted / # cd dev
    root@frosted /dev # ls
    ttyS0
    zero
    null
    root@frosted /dev # 

Screenshot
==========

Everybody love screenshots.

![FrostedOS Docker Qemu screenshot](https://raw.githubusercontent.com/zoobab/frostedos-docker/master/frostedos-docker-screenshot.png)

Todo
====

* Add micropython
* Add busybox for frosted
* Add kernel serial boot messages
* Add network interface

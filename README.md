# Development environment for skylines

This is a vagrant-based development environment builder for Skylines project.

Creates ubuntu 32-bit based virtual machine and sets up all services and
dependencies needed to run skylines.

To build skylines VM from scratch, run
```sh
$ vagrant up
```

Scripts assume `../skylines` directory exists, containing skylines sources.
That directory will be mapped to `/skylines` in virtual machine. 

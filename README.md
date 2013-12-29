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


## Developing the development environment

Vagrant development environment is provisioned using `chef`. Main cookbook for
setting up skylines is located in `cookbooks-site/skylines`.

All cookbooks under `cookbooks` directory are managed by `librarian-chef`, so
it must be installed in order to update all the dependency cookbooks.

```
$ gem install [--user-install] librarian-chef
```

To update dependencies, run

```
$ librarian-chef outdated
$ librarian-chef update
```

These 3rd-party cookbooks are included in git tree though, so after any update
changes has to be committed to git.
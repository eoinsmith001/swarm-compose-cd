# upgrading svcs using compose and swarm

## Requirements

- Docker 1.13
- Run `docker swarm init` to establish a (trivial) one-node swarm

## Demo

- `./demo.sh`

## Notes

- Removing a service from compose file is a problem, it is not removed from the running services in the stack
- Modifying version tags does work, including downgrade; a totally modified compose file is usable

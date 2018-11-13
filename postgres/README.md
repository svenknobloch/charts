# Helm Chart: postgres

## Configuration

| Parameter             | Description                                   | Default                       |
| --------------------- | --------------------------------------------- | ----------------------------- |
| `nameOverride`        | Name of the release                           | `nil`                         |
| `fullnameOverride`    | Full name of the release                      | `nil`                         |
| `resources`           | Resource limits                               | `{}`                          |
| `nodeSelector`        | Additional node selectors                     | `{}`                          |
| `tolerations`         | Additional tolerations                        | `{}`                          |
| `affinity`            | Additional affinities                         | `{}`                          |
|                       |                                               |                               |

### Image (`image`)
| Parameter             | Description                                   | Default                       |
| --------------------- | --------------------------------------------- | ----------------------------- |
| `repository`          | Set image repository                          | `postgres`                    |
| `tag`                 | Set image tag                                 | `11-alpine`                   |
| `pullPolicy`          | Set image pull policy                         | `IfNotPresent`                |
|                       |                                               |                               |

### Config (`config`)
| Parameter             | Description                                   | Default                       |
| --------------------- | --------------------------------------------- | ----------------------------- |
| `user`                | User to create                                | `postgres`                    |
| `password`            | Password for the user                         | Value of `config.user`        |
| `database`            | Database to create                            | Value of `config.user`        |
|                       |                                               |                               |

### Service (`service`)
| Parameter             | Description                                   | Default                       |
| --------------------- | --------------------------------------------- | ----------------------------- |
| `type`                | Type of service                               | `ClusterIP`                   |
| `port`                | Port for the service                          | `5432`                        |
|                       |                                               |                               |

### Persistence (`persistence`)
| Parameter             | Description                                   | Default                       |
| --------------------- | --------------------------------------------- | ----------------------------- |
| `accessModes`         | Volume access modes                           | `[ ReadWriteOnce ]`           |
| `size`                | Size of the volume claim                      | `8Gi`                         |
| `storageClass`        | Storage class to use                          | `-`                           |
|                       |                                               |                               |

### Global (`global`)
| Parameter             | Description                                   | Default                       |
| --------------------- | --------------------------------------------- | ----------------------------- |
| `persistence`         | Whether to enable persistence                 | `false`                       |
|                       |                                               |                               |
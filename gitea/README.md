# Helm Chart: gitea

NB: Gitea will not ask for an initial admin user if the database connection details and the secret key are set. To get around this, leave open registration enabled to create the admin user (first user is automatically admin) and then optionally disable open registration afterwards.

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
| `appName`             | Application name                              | `Gitea: Git with a cup of tea`|
| `runMode`             | Run mode, `dev` or `prod`                     | `dev`                         |
| `sshDomain`           | Domain for cloning                            | `localhost`                   |
| `sshPort`             | SSH port for cloning                          | `22`                          |
| `disableSSH`          | Whether to disable SSH                        | `false`                       |
| `httpPort`            | HTTP listen port                              | `3000`                        |
| `rootUrl`             | Overwrite generated public URL                | `nil`                         |
| `installLock`         | Disallow access to install page               | `false`                       |
| `secretKey`           | Global secret key                             | `nil`                         |
| `disableRegistration` | Disable user self-registration                | `false`                       |
| `requireSignIn`       | Require logging in to view any pages          | `false`                       |
| `userUID`             | Unix UID of user                              | `1000`                        |
| `userGID`             | Unix GID of user                              | `1000`                        |
|                       |                                               |                               |

### Service (`service`)
| Parameter             | Description                                   | Default                       |
| --------------------- | --------------------------------------------- | ----------------------------- |
| `type`                | Type of service                               | `ClusterIP`                   |
| `port`                | Port for the service                          | `3000`                        |
|                       |                                               |                               |

### Persistence (`persistence`)
| Parameter             | Description                                   | Default                       |
| --------------------- | --------------------------------------------- | ----------------------------- |
| `accessModes`         | Volume access modes                           | `[ ReadWriteOnce ]`           |
| `size`                | Size of the volume claim                      | `8Gi`                         |
| `storageClass`        | Storage class to use                          | `-`                           |
|                       |                                               |                               |

### Database Config (`database.config`)
| Parameter             | Description                                   | Default                       |
| --------------------- | --------------------------------------------- | ----------------------------- |
| `password`            | Database password                             | `nil`                         |
|                       |                                               |                               |

### Database Persistence (`database.persistence`)
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
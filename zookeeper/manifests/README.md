# Run

- Create PV

```bash
$ kubectl apply -f 1.zookeeper-persistentvolume.yaml
```

- Create PVC

```bash
$ kubectl apply -f 2.zookeeper-persistentvolumeclaim.yaml
```

- Run Zookeeper

```bash
$ kubectl apply -f zookeeper.yaml
```

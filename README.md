## Root project, create OCI images for subprojects with buildah

```
./gradlew bootJar
./gradlew buildah [-PdockerVersion=1.0.1 ]
```

## Root project, create OCI images for subprojects with docker

```
./gradlew bootJar
./gradlew docker [-PdockerVersion=1.0.1 ]

```

# Creating tag

```
newtag=v1.0.1
git commit -a -m "changes for new tag $newtag" && git push
git tag $newtag && git push origin $newtag
```

# Deleting tag

```
todel=v1.0.1

# delete local tag, then remote
git tag -d $todel && git push origin :refs/tags/$todel
```

# Deleting release

```
todel=v1.0.1

# delete release and remote tag
gh release delete $todel --cleanup-tag -y

# delete local tag
git tag -d $todel
```

##### BEGIN external-extended/Dockerfile/iamge-header #####
FROM $CONTECO_REALM/$CONTECO_ECOSYSTEM.$CONTECO_BASE AS base
##### END external-extended/Dockerfile/image-header #####

##### BEGIN image/Dockerfile/build-instructions #####
RUN apk update && apk add docker && apk add git && apk add inotify-tools && apk add nano && rm -rf /var/cache/apk/*
##### END image/Dockerfile/build-instructions #####

##### BEGIN external/Dockerfile/conteco #####
COPY ./ /repo/git-repository/
##### END external/Dockerfile/conteco #####

##### BEGIN external-mapped/Dockerfile/labels-footer #####
LABEL $CONTECO_LABELSPACE.schema-version="1.0" \
      $CONTECO_LABELSPACE.realm="$CONTECO_REALM" \
      $CONTECO_LABELSPACE.ecosystem="$CONTECO_ECOSYSTEM" \
      $CONTECO_LABELSPACE.type="$CONTECO_TYPE" \
      $CONTECO_LABELSPACE.name="$CONTECO_NAME" \
      $CONTECO_LABELSPACE.tag="$CONTECO_TAG" \
      $CONTECO_LABELSPACE.base="$CONTECO_BASE" \
      $CONTECO_LABELSPACE.build="$CONTECO_BUILD" \
      $CONTECO_LABELSPACE.label="$CONTECO_LABEL" \
      $CONTECO_LABELSPACE.description="$CONTECO_DESCRIPTION" \
      $CONTECO_LABELSPACE.repository="/conteco/git-repository" 
##### END external-mapped/Dockerfile/labels-footer #####

#!/usr/bin/env bash

build() {
  local path
  local image_name
  path="$1"
  image_name="$2"
  readonly path
  readonly image_name
  docker build --compress --pull -t "${image_name}" "${path}"
}

push() {
  local image
  image="$1"
  readonly image
  docker push "${image}"
}

main() {
  local path
  local ver
  local image_name
  path="."
  readonly path
  ver="1.0"
  echo 'ver: '"${ver}"
  image_name='python/scrap:'"${ver}"
  readonly image_name
  echo 'image_name: '"${image_name}"
  build "${path}" "${image_name}" || exit 1
  #push "${image_name}" || exit 1
}

main "$@"

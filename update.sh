#!/bin/bash

# pack and sign all charts
for chart in helm/*; do
  helm package $chart --sign --key 'bot@zhield.io' --keyring keyring.pgp 
done

# verify signatures on all packages
for package in *.tgz; do
  helm verify $package
done

# update repository index file
helm repo index .

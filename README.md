# homebrew-noah

## Release Engineering

```console
$ brew install --build-bottle ./noah.rb 
$ brew bottle noah
$ vim noah.rb 
$ curl -T noah-${VERSION}.sierra.bottle.tar.gz -unyuichi:${APIKEY} https://api.bintray.com/content/linux-noah/noah/noah/${VERSION}/noah-${VERSION}.sierra.bottle.tar.gz
$ curl -X POST -unyuichi:${APIKEY} https://api.bintray.com/content/linux-noah/noah/noah/${VERSION}/publish
```

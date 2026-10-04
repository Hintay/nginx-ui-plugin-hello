# Hello Templates

A test plugin for [Nginx UI](https://nginxui.com) with one configuration
template, `Hello Header`, which adds an `X-Hello` response header. It exists
to test the plugin catalog and the developer portal, and is listed only in
the test catalog [nginxui/plugins-staging](https://github.com/nginxui/plugins-staging).

## Release

`./build.sh` packs `plugin.json` and `templates/` into
`dist/io.github.hintay.hello-<version>.tar.gz`. Pushing a tag `v<version>`
that matches `plugin.json` signs the package with
[nginxui/plugin-release](https://github.com/nginxui/plugin-release) and
publishes it on the GitHub Release.

## License

MIT

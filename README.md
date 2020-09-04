# Inspinia::Rails

Rails assets for Inspinia front-end template.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'inspinia-rails', '~> 2.7.1.0.0', github: 'wondersistemas/inspinia-rails'
```

And then execute:

```bash
$ bundle
```

## Usage

### Installing the package

Execute in the command line:

```bash
rake inspinia:install_assets
```

This will insert inspinia stylesheets and javascript dependencies in your application manifest files, and create `inspinia-overrides.scss` file.

### Installing with default overrides

```bash
rake inspinia:install_assets -- --wonder-defaults
```

This will insert inspinia assets and default overrides.

### Helpers

Check [helpers files](app/helpers/inspinia/rails/).

## Development

Updating inspinia packages metismenu and jquery-slimscroll.

```bash
rake upgrade_dependencies
```

Upgrading uses [yarn package manager](https://yarnpkg.com/). You need to install it first.

## Versioning

`<inspinia major version>.<inspinia minor version>.<inspinia fix version>.<inspinia patch version>.<gem patch>`

Template available at: https://wrapbootstrap.com/theme/inspinia-responsive-admin-theme-WB0R5L90S

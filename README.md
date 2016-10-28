# macos_configuration cookbook

description

# Requirements
Chef 12.15: Custom resources are based on requirements that started on 12.15

## Prerequisites
TODO

## Platforms
- `mac_os_x`

## platform_version
- `10.11`

## Cookbooks
- `mac_os_x` - TODO

# Attributes
TODO

# Resources and Providers
TODO

## macos_configuration

### Examples

```ruby
macos_configuration 'enables firewall and disable Block All Incoming Connections' do
  topic "firewall"
  feature 'system firewall state'
  value 1
  action :set
end

macos_configuration 'auto check' do
  topic 'updates'
  action :enable
end
```

# Usage
TODO

resource_name :macos_configuration

actions :enable, :disable, :set
default_action :set

# TODO: Make a list of the available features
property :feature,
          kind_of: String,
          name_attribute: true,
          required: true

# A topic is a named group of features
property :topic,
          kind_of: String,
          required: true

# Only use this when using the :set action, as this will be used for any
# settings that are not boolean.
# TODO: Return error if value is set for actions :enable and :disable
property :value,
          kind_of: [String, Integer],
          required: false

# Run as a specific user, otherwise run as node's current user
property :user,
          kind_of: String,
          #TODO(meg): Import this from my hardening recipe
          default: node['macos_config']['user'],
          required: true

action :enable do
  # TODO
end

action :disable do
  # TODO
end

action :set do
  # TODO: should fail if new_resource.value is NOT set
end

#
# Cookbook Name:: macos_configuration
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


macos_configuration 'Auto check' do
  topic 'updates'
  action :enable
end

SYSTEM_CONFIGS = YAML.load_file("#{Dir.pwd}/files/defaults_configs/system_configs.yaml")
USER_CONFIGS = YAML.load_file("#{Dir.pwd}/files/defaults_configs/user_configs.yaml")
CURRENTHOST_CONFIGS = YAML.load_file("#{Dir.pwd}/files/defaults_configs/currenthost_configs.yaml")
GLOBAL_CONFIGS = YAML.load_file("#{Dir.pwd}/files/defaults_configs/global_configs.yaml")

# Lists all features supported by the feature class, optionally filter by version.
def list_features(feature_class, version=nil)
  if version
    feature_class.select { |k,v| v.has_key? version }.keys
  else
    feature_class.keys
  end
end

# retrieve features
def show_feature(feature_class, feature, version, action)
  {
    domain: feature_class[feature][version]['domain'],
    key: feature_class[feature][version]['key'],
    action_value: feature_class[feature][version]['action'][action],
    sudo: feature_class[feature][version]['sudo'],
    global: feature_class[feature][version]['global']
  }
end

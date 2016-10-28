#
# Cookbook Name:: macos_configuration
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

macos_configuration 'Auto check' do
  topic 'updates'
  action :enable
end

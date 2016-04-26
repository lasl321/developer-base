#
# Cookbook Name:: developer-base
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'nodejs::default'

apt_repository "chrome" do
    uri "http://dl.google.com/linux/chrome/deb/"
    distribution "stable"
    components ["main"]
    arch "amd64"
    key "https://dl-ssl.google.com/linux/linux_signing_key.pub"
    action :add
end

package "google-chrome-stable"
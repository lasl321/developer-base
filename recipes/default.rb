#
# Cookbook Name:: developer-base
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'nodejs::default'
include_recipe 'developer-base::chrome'

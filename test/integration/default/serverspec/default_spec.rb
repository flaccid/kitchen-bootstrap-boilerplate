# encoding: UTF-8

require_relative 'spec_helper'

describe file('/root/helloworld.txt') do
  it { should exist }
  it { should be_file }
  its(:content) { should match /Hello, world!/ }
end

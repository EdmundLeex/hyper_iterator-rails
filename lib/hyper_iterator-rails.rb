require_relative './hyper_iterator/rails/version'
require_relative './hyper_iterator/rails/active_record'

module HyperIterator
  module Rails
    class Railtie < ::Rails::Railtie
      require 'hyper_iterator'
    end
  end
end

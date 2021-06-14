# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.human_attribute_enum_value(attr_name, value)
    human_attribute_name("#{attr_name}.#{value}")
  end

  def human_attribute_enum(attr_name)
    self.class.human_attribute_enum_value(attr_name, self[attr_name]) if self[attr_name]
  end

  def self.enum_options_for_select(attr_name)
    send(attr_name.to_s.pluralize).map {|k, _| [human_attribute_enum_value(attr_name, k), k] }.to_h
  end
end

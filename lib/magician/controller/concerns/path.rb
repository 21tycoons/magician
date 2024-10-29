module Magician::Controller::Concerns::Path
  extend ActiveSupport::Concern

  def next_wizard_path(options = {})
    wizard_path(@next_step, options)
  end

  def next_wizard_url(options = {})
    wizard_url(@next_step, options)
  end

  def previous_wizard_path(options = {})
    wizard_path(@previous_step, options)
  end

  def previous_wizard_url(options = {})
    wizard_url(@previous_step, options)
  end

  def magician_controller
    params[:controller]
  end

  def magician_action
    params[:action]
  end

  def wizard_path(go_to_step = nil, options = {})
    options = options.respond_to?(:to_h) ? options.to_h : options
    options = { :controller => wicked_controller,
                :action     => 'show',
                :id         => go_to_step || params[:id],
                :only_path  => true
               }.merge options
    url_for(options)
  end

  def wizard_url(go_to_step = nil, options = {})
    wizard_path(go_to_step, options.merge(only_path: false))
  end
end

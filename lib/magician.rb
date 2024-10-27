require 'erb'
require 'active_support/concern'
require 'active_support/core_ext/object/blank'

module Magician
  FIRST_STEP  = "step--first"
  LAST_STEP   = "step--last"
  FINISH_STEP = "step--finish"

  module Controller
    module Concerns
    end
  end

  module Wizard
  end

  autoload :WizardController, "magician/wizard_controller"

  class WizardError < StandardError; end
  class StepError < WizardError; end
  class ProtectedStepError < StepError; end
end

require 'magician/controller/concerns/render_redirect'
require 'magician/controller/concerns/steps'
require 'magician/controller/concerns/path'
require 'magician/controller/concerns/action'
require 'magician/wizard'
require 'magician/wizard/translated'
require 'magician/engine'

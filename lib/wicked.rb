require 'erb'
require 'active_support/concern'
require 'active_support/core_ext/object/blank'

module Wicked
  FIRST_STEP  = "step--first"
  LAST_STEP   = "step--last"
  FINISH_STEP = "step--finish"

  module Controller
    module Concerns
    end
  end
  module Wizard
  end
  autoload :WizardController, "wicked/wizard_controller"
end

class WizardError < StandardError; end
class StepError < WizardError; end
class ProtectedStepError < StepError; end

require 'wicked/controller/concerns/render_redirect'
require 'wicked/controller/concerns/steps'
require 'wicked/controller/concerns/path'
require 'wicked/controller/concerns/action'
require 'wicked/wizard'
require 'wicked/wizard/translated'
require 'wicked/engine'

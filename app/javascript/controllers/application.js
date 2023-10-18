import { Application } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails"

const application = Application.start()

window.Stimulus = application
export { application }

require 'ui_bibz/infos'
module UiBibzApp
  class Application
    include UiBibz

    VERSION     = UiBibz::VERSION
    NAME        = UiBibz::NAME
    DESCRIPTION = UiBibz::DESCRIPTION
    SUMMARY     = UiBibz::SUMMARY
    LICENSE     = UiBibz::LICENSE
    STATUSES    = UiBibz::Ui::Core::Component::STATUSES
    SIZES       = UiBibz::Ui::Core::Component::SIZES
    BREAKPOINTS = UiBibz::Ui::Core::Component::BREAKPOINTS
    FONTAWESOME_VERSION = UiBibz::FONTAWESOME_VERSION
    BOOTSTRAP_VERSION   = UiBibz::BOOTSTRAP_VERSION
  end
end

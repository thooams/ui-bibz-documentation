module UiBibzApp
  class Application

    UI_BIBZ     = Gem::Specification.find_by_name('ui_bibz')
    VERSION     = "2.0.0.beta2" # UI_BIBZ.version.to_s
    NAME        = "Ui Bibz" # UI_BIBZ.name.humanize.titleize
    DESCRIPTION = "A Rails Interface Framework using Bootstrap." # UI_BIBZ.description
    SUMMARY     = "Create your project with Ui Bibz. Over a thirty reusable components built to provide iconography, dropdowns, input groups, navigation, alerts, and much more." # UI_BIBZ.summary
    LICENSE     = "MIT" #UI_BIBZ.license
    STATUSES    = %i(primary secondary success danger warning info light dark)
    SIZES       = %i(lg md sm)

    class Gems

      def self.ui_bibz
        @ui_bibz ||= Gem::Specification.find_by_name('ui_bibz')
      end

      def self.font_awesome
        self.ui_bibz.dependent_specs.find{ |u| u.name == 'font-awesome-sass' }
      end

      def self.bootstrap
        self.ui_bibz.dependent_specs.find{ |u| u.name == 'bootstrap' }
      end

    end
  end

end

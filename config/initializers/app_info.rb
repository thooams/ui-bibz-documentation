module UiBibzApp
  class Application

    UI_BIBZ     = Gem::Specification.find_by_name('ui_bibz')
    VERSION     = UI_BIBZ.version
    NAME        = UI_BIBZ.name.humanize.titleize
    DESCRIPTION = UI_BIBZ.description
    SUMMARY     = UI_BIBZ.summary
    LICENSE     = UI_BIBZ.license
    STATUSES    = %i(primary secondary success danger warning info light dark)

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

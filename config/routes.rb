# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  get 'home/index'
  get 'getting_started' => 'home#getting_started'
  get 'about'           => 'home#about'
  get 'component'       => 'home#component'
  get 'custom_component'=> 'home#custom_component'
  get 'simple_form'     => 'home#simple_form'
  get 'theme'           => 'home#theme'

  root 'home#index'

  namespace :components do
    namespace :forms do
      # buttons
      namespace :buttons do
        get 'button'
        get 'button-group'
        get 'button-link'
        get 'button-split-dropdown'
        get 'button-toolbar'
      end

      namespace :dropdowns do
        get 'dropdown'
        get 'split_dropdown'
      end

      # files
      namespace :files do
        get 'file-field'
      end

      # surrounds
      namespace :surrounds do
        get 'surround-field'
      end

      # texts
      namespace :texts do
        get 'auto-complete-field'
        get 'text-field'
      end

      # textareas
      namespace :textareas do
        get 'markdown-editor-field'
      end

      # number
      namespace :numbers do
        get 'formula-field'
        get 'number-field'
        get 'range-field'
        get 'slider-field'
      end

      # selects
      namespace :selects do
        get 'dropdown-select-field'
        get 'multi-column-field'
        get 'select-field'
      end

      # dates
      namespace :dates do
        get 'date-picker-field'
      end

      # choices
      namespace :choices do
        get 'box-switch-field'
        get 'checkbox-field'
        get 'choice-group'
        get 'radio-field'
        get 'switch-field'
      end
    end

    namespace :boxes do
      get 'card'
      get 'card-accordion'
      get 'card-column'
      get 'card-grid'
      get 'card-group'
      get 'jumbotron'
    end

    namespace :containers do
      get 'panel'
      get 'panel-table'
      get 'panel-tree'
      get 'viewport'
    end

    namespace :layouts do
      get 'col'
      get 'container'
      get 'row'
    end

    namespace :windows do
      get 'modal'
    end

    namespace :navigations do
      get 'breadcrumb'
      get 'link'
      get 'nav'
      get 'navbar'
      get 'pagination'
      get 'tab_group'
      get 'toolbar'
    end

     # notifications
    namespace :notifications do
      get 'alert'
      get 'badge'
      get 'component'
      get 'popover'
      get 'progress_bar'
      get 'spinner'
      get 'toast'
      get 'tooltip'
    end

    namespace :icons do
      get 'glyph'
      get 'star'
    end

    namespace :tables do
      get 'table'
      get 'table_card'
    end

    namespace :lists do
      get 'list'
      get 'list_group'
    end
  end
end

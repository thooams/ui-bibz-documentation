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
        get 'button-toolbar'
        get 'button-link'
        get 'button-split-dropdown'
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
        get 'text-field'
        get 'auto-complete-field'
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
      end

      # selects
      namespace :selects do
        get 'select-field'
        get 'dropdown-select-field'
        get 'multi-select-field'
        get 'multi-column-field'
      end

      # dates
      namespace :dates do
        get 'date-picker-field'
      end

      # choices
      namespace :choices do
        get 'choice-group'
        get 'switch-field'
        get 'box-switch-field'
        get 'checkbox-field'
        get 'radio-field'
      end
    end

    namespace :boxes do
      get 'card'
      get 'card-column'
      get 'card-accordion'
      get 'card-grid'
      get 'card-group'
      get 'jumbotron'
    end

    namespace :containers do
      get 'panel'
      get 'panel-tree'
      get 'panel-table'
      get 'viewport'
    end

    namespace :layouts do
      get 'col'
      get 'row'
      get 'container'
    end

    namespace :windows do
      get 'modal'
    end

    namespace :navigations do
      get 'breadcrumb'
      get 'toolbar'
      get 'link'
      get 'pagination'
      get 'nav'
      get 'navbar'
      get 'tab_group'
    end

     # notifications
    namespace :notifications do
      get 'component'
      get 'alert'
      get 'badge'
      get 'progress_bar'
      get 'spinner'
      get 'toast'
    end

    namespace :icons do
      get 'glyph'
      get 'glyph_group'
      get 'star'
    end

    namespace :tables do
      get 'table'
      get 'table_card'
    end

    namespace :lists do
      get 'list_group'
      get 'list'
    end
  end
end

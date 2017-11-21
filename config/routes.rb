Rails.application.routes.draw do

  #get 'buttons/index'

  resources :users
  get 'home/index'
  get 'getting_started' => 'home#getting_started'
  get 'about'           => 'home#about'
  get 'component'       => 'home#component'
  get 'custom_component'=> 'home#custom_component'
  get 'theme'           => 'home#theme'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  #resource :components, only: :index do
    #resource :buttons
  #end
  namespace :components do
    namespace :forms do
      # buttons
      namespace :buttons do
        get 'button'
        get 'button-choice'
        get 'button-group'
        get 'button-toolbar'
        get 'button-link'
        get 'button-split-dropdown'
      end

      namespace :dropdowns do
        get 'dropdown'
        get 'split_dropdown'
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
      end

      # simple form
      namespace :simple_form do
        get 'inputs'
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
        get 'switch-field'
        get 'checkbox-field'
        get 'radio-field'
      end
    end

    namespace :boxes do
      get 'card'
      get 'card-column'
      get 'card-deck'
      get 'card-group'
      get 'jumbotron'
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
    end

    namespace :icones do
      get 'glyph'
      get 'star'
    end

    namespace :tables do
      get 'table'
      get 'table_card'
    end

    namespace :lists do
      get 'list_group'
    end
  end

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

Rails.application.routes.draw do

  #get 'buttons/index'

  resources :users
  get 'home/index'
  get 'getting_started' => 'home#getting_started'
  get 'about'           => 'home#about'
  get 'theme'           => 'home#theme'
  get 'components'      => 'components#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  #resource :components, only: :index do
    #resource :buttons
  #end
  namespace :components do
    namespace :inputs do
      # buttons
      namespace :buttons do
        get 'button'
        get 'button-choice'
        get 'button-dropdown'
        get 'button-group'
        get 'button-link'
        get 'button-split-dropdown'
      end

      # texts
      namespace :texts do
        get 'surround-field'
        get 'autocomplete-field'
      end

      # textareas
      namespace :textareas do
        get 'markdown-editor-field'
      end

      # number
      namespace :numbers do
        get 'formula-field'
      end

      # selects
      namespace :selects do
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

    namespace :cards do
      get 'card'
      get 'card-column-deck-and-group'
    end

    namespace :layouts do
      get 'col'
      get 'row'
      get 'container'
    end

    get 'dropdown'
    get 'jumbotron'
    get 'label_etiquette'
    get 'alert_notify'
    get 'nav'
    get 'navbar'
    get 'component'
    get 'breadcrumb'
    get 'progress'
    get 'list_group'
    get 'modal'
    get 'star'
    get 'table'
    get 'table_card'
    get 'core'
    get 'ux'
    get 'glyph'
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

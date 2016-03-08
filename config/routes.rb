Rails.application.routes.draw do

  #get 'buttons/index'

  resources :users
  get 'home/index'
  get 'getting_started' => 'home#getting_started'
  get 'about'           => 'home#about'
  get 'components'      => 'components#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  #resource :components, only: :index do
    #resource :buttons
  #end
  namespace :components do
    get 'buttons'                           => 'buttons#index'
    get 'buttons/buttons-choice'            => 'buttons#buttons_choice'
    get 'buttons/buttons-dropdown'          => 'buttons#buttons_dropdown'
    get 'buttons/buttons-group'             => 'buttons#buttons_group'
    get 'buttons/buttons-link'              => 'buttons#buttons_link'
    get 'buttons/buttons-split-dropdown'    => 'buttons#buttons_split_dropdown'
    get 'inputs/surround-fields'            => 'inputs#surround_fields'
    get 'inputs/switch-fields'              => 'inputs#switch_fields'
    get 'inputs/date-picker-fields'         => 'inputs#date_picker_fields'
    get 'inputs/multi-select-fields'        => 'inputs#multi_select_fields'
    get 'inputs/multi-column-fields'        => 'inputs#multi_column_fields'
    get 'cards/cards'                       => 'cards#index'
    get 'cards/cards-column-deck-and-group' => 'cards#cards_column_deck_and_group'
    get 'layouts/grid'                      => 'layouts#grid'
    get 'layouts/container'                 => 'layouts#container'
    get 'dropdowns'
    get 'jumbotrons'
    get 'labels_etiquettes'
    get 'alerts_notify'
    get 'navs'
    get 'navbars'
    get 'components'
    get 'breadcrumbs'
    get 'progresses'
    get 'lists_group'
    get 'modals'
    get 'stars'
    get 'tables'
    get 'tables_cards'
    get 'core'
    get 'ux'
    get 'glyphs'
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

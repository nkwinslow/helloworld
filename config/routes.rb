Rails.application.routes.draw do
  scope ENV['PRODUCT_NAME'] do
    ZuulClient.routes self
  end
  root 'welcome#index'
  get 'companies/:id' => 'companies#show', as: :company
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
end

Rails.application.routes.draw do
  get "/fortune_url" => "pages#fortune_method"
  get "/lotto_url" => "pages#lotto_method"
  get "/count_url" => "pages#count_method"
  get "/beer_url" => "pages#beer_method"
end

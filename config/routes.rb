Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:the_num",        { :controller => "calc", :action => "flex_square" })
  get("/flexible/square_root/:the_num",        { :controller => "calc", :action => "flex_square_root" })
  get("/flexible/payment/:basis_points/:num_years/:present_value",        { :controller => "calc", :action => "monthly_payment" })
  get("/flexible/random/:small_number/:big_number",        { :controller => "calc", :action => "random_small_big" })
  get("/square/results",        { :controller => "calc", :action => "square_results" })
  get("/square/new",        { :controller => "calc", :action => "square_form_results" })
  get("/square_root/results",        { :controller => "calc", :action => "square_root_results" })
  get("/square_root/new",        { :controller => "calc", :action => "square_root_form_results" })
  get("/payment/new",        { :controller => "calc", :action => "payment_form" })
  get("/payment/results",        { :controller => "calc", :action => "payment_form_results" })
  get("/random/new",        { :controller => "calc", :action => "random_form" })
  get("/random/results",        { :controller => "calc", :action => "random_form_results" })


end

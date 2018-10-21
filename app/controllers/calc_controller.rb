class CalcController < ApplicationController
    
    #---------------FLEX SQUARE------------------
    
    def flex_square
        
        #The parameters look like this: Params = {"the_num" => "42"}
        #Rails puts that hash in a variable called params
        
        @num = params.fetch("the_num").to_i
        @the_answer = @num * @num
        
        render("calc_templates/flexible_square.html.erb")
    end
    
    #---------------FLEX SQUARE ROOT------------------
    
    def flex_square_root
        
        @num = params.fetch("the_num").to_i
        @the_answer = @num**0.5
        
        render("calc_templates/square_root_flexible.html.erb")
        
    end
    
        #---------------FLEX PAYMENT--------------------
    
    def monthly_payment
      @num1 = params.fetch("basis_points").to_f
      @num2 = params.fetch("num_years").to_f
      @num3 = params.fetch("present_value").to_f
      
      @answer_monthly = (@num1/12/10000*@num3*(1+@num1/12/10000)**(@num2*12))/((1+@num1/12/10000)**(@num2*12)-1).to_f

      
    render("calc_templates/monthly_payments.html.erb")
    end
        
        #---------------RANDOM SMALL BIG--------------------
        
    def random_small_big
      @num1 = params.fetch("small_number").to_i
      @num2 = params.fetch("big_number").to_i

      @answer = (rand(@num1+1...@num2))
      
    render("calc_templates/small_big.html.erb")
   end
  
    #-----------------SQUARE CALCULATION-------------------
  
   def square_form_results
  #@the_input_number = params.fetch("user_input")
  #@the_answer = @the_input_number.to_f**2
  
  render("calc_templates/square_form.html.erb")
  end
  
  
  
  
  
  
  def square_results
   @the_input_number = params.fetch("user_input")
   @the_answer = @the_input_number.to_f**2
  render("calc_templates/square_form_results.html.erb")
  end
  
  
  
  
  
  
  
  def square_root_form_results
  #@the_input_number = params.fetch("user_input")
  #@the_answer = @the_input_number.to_f**2
  
  render("calc_templates/square_root_form.html.erb")
  end
  
  
  
  
  
  
  
  def square_root_results
   @the_input_number = params.fetch("user_input")
   @the_answer = @the_input_number.to_f**0.5
  render("calc_templates/square_root_form_results.html.erb")
  end
  
  
  
  
  
  
  def payment_form
  
  render("calc_templates/payment_form.html.erb")
  end
  
  
  
  
  
  def payment_form_results
    
  @apr = params.fetch("user_apr").to_f
  @num_years = params.fetch("user_years").to_f
  @principal = params.fetch("user_pv").to_f
  @answer_monthly_2 = (@apr/12/100*@principal)/((1-(1+@apr/12/100)**(@num_years*(-12))))

  render("calc_templates/payment_form_results.html.erb")
  end
  
  
  
  
  
  def random_form
   
  render("calc_templates/random_form.html.erb")
  end
  
  
  
  
  
  def random_form_results
  
  @user_min = params.fetch("user_min").to_f
  @user_max = params.fetch("user_max").to_f
  @answer = (rand(@user_min...@user_max))
  
  render("calc_templates/random_form_results.html.erb")
  end
  
  
  
end


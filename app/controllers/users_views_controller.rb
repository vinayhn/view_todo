class UsersViewsController < ApplicationController
  include HTTParty
  

  def login
  end
  
  def regester
  end
  
  def forgot_password
  end

  def create 
    url = 'http://localhost:3000/create_user'
    @regester =  HTTParty.post(url, body: { user: {name: params[:name], email: params[:email], password_digest: params[:password_digest]} })   
    redirect_to login_path
    #puts " create_response#{@regester}"   
  end

  def authenticate
    url = 'http://localhost:3000/login'
    #puts params[:email]
    #puts  params[:password]
    @login =  HTTParty.post(url, body: {email: params[:email], password_digest: params[:password_digest].to_s})   
    session["token"] = @login.headers["http_wwwauthenticate"]
    puts  @login.headers
    #puts "lofin info #{@login}"
    if @login.message.eql?"OK"
      redirect_to view_tasks_path
     
      #render json: {message: session[:token]}
    else
      render json: {message: "error while login"}
    end
  end

  def logout
    url = 'http://localhost:3000/logout'
    #byebug
    @logout =  HTTParty.post(url, headers: {wwwauthenticate: session[:token]} )    
    
    if @logout.message.eql?"OK"
      session["token"] = ""
      redirect_to login_path
      #render json: {message: "logged out"}
    else
      render json: {message: "error while loging out"}
    end
  end

  def send_new_password_email
    url = 'http://localhost:3000/send_new_password_email'
    @send_mail =  HTTParty.post(url, body: {email: params[:email], new_password: params[:new_password], confirm_password: params[:confirm_password]})     
    if @send_mail.message.eql?"OK"
      redirect_to login_path
      #render json: {message: "mail sent"}
    else
      render json: {message: "error while sending mail"}
    end

  end

 
end

class UsersController < ApplicationController
  # POST: create a new user
  post "/users" do
    user = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      user.to_json(except: [:password_digest])
    else
      { errors: user.errors.full_messages }.to_json
    end
  end

  # GET: fetch all users
  get "/users" do
    users = User.all
    users.to_json(except: [:password_digest])
  end

  # GET: fetch a user by id and get all trips for the user
  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json(include: :trips, except: [:password_digest])
  end

  # POST: login an existing user
  post "/login" do
    user = User.find_by(email: params[:email])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      user.to_json(except: [:password_digest])
    else
      { errors: "Invalid email or password" }.to_json
    end
  end

  # POST: logout the current user
  post "/logout" do
    session.clear
    { message: "Logged out successfully" }.to_json
  end

  # PUT: update a user by id
  put "/users/:id" do
    user = User.find(params[:id])
    user.assign_attributes(
      username: params[:username],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      user.to_json(except: [:password_digest])
    else
      { errors: user.errors.full_messages }.to_json
    end
  end

  # DELETE: delete a user by id
  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy
    user.to_json(except: [:password_digest])
  end

  # DELETE: delete all users
  delete "/users" do
    User.destroy_all
    { message: "All users have been deleted." }.to_json
  end
end

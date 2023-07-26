class ApplicationController < Sinatra::Base
  enable :sessions
  set :session_secret, 'your_secret' # Replace 'your_secret' with a real secret value.
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    "MAYAS TRAVEL PLANNER".to_json
  end
end

class TripsController < ApplicationController

# GET: fetch all trips
get "/trips" do
  trips = Trip.all
  trips.to_json
end

# GET: fetch all trips for a specific user
get "/users/:user_id/trips" do
  user = User.find(params[:user_id])
  trips = user.trips
  trips.to_json
end


  # POST: create a new trip for a user
  post "/users/:id/trips" do
    user = User.find(params[:id])
    trip = user.trips.create(
      destination: params[:destination],
      travel_mode: params[:travel_mode],
      budget: params[:budget],
      start_date: params[:start_date],
      end_date: params[:end_date],
      notes: params[:notes],
      image_url: params[:image_url],
      trip_status: params[:trip_status]
    )
    trip.to_json
  end

  # GET: fetch a trip by id
  get "/trips/:id" do
    trip = Trip.find(params[:id])
    trip.to_json
  end

  # PUT: update a trip
  put "/trips/:id" do
    trip = Trip.find(params[:id])
    trip.update(
      destination: params[:destination],
      travel_mode: params[:travel_mode],
      budget: params[:budget],
      start_date: params[:start_date],
      end_date: params[:end_date],
      notes: params[:notes],
      image_url: params[:image_url],
      trip_status: params[:trip_status]
    )
    trip.to_json
  end

  # DELETE: delete a trip
  delete "/trips/:id" do
    trip = Trip.find(params[:id])
    trip.destroy
    trip.to_json
  end

end
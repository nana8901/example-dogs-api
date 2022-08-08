class DogsController < ApplicationController

  def create
    if authenticate_user == false
    else
      dog = Dog.new(
        name: params[:name],
        age: params[:age],
        breed: params [:breed],
        user: current_user
      )
    end
    if dog.save
      render dog.as_json
    else
      render json: {error: "Something went wrong, try again?"}
    end
    end
  end
end

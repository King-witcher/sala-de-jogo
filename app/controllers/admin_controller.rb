class AdminController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    if session[:admin]
      redirect_to '/admin/requests'
    else
      render :index
    end
  end

  def login
    password = ENV["ADMIN_PASSWORD"]
    p password

    if params[:password] == password
      session[:admin] = true
      redirect_to '/admin/requests'

    else
      @error = true
      render :index
    end
  end

  def logout
    session[:admin] = false
    redirect_to '/'
  end

  def coaches
    if session[:admin]
      @coaches = Coach.all
      render :coaches
    else
      redirect_to '/admin'
    end
  end

  def new_coach_form
    unless session[:admin]
      redirect_to '/admin'
      return
    end

    render :new_coach
  end

  def new_coach
    unless session[:admin]
      redirect_to '/admin', status: 403
      return
    end

    Coach.create(
      username: params[:username],
      password: '123456',
      name: params[:name],
      description: params[:description],
      whatsapp: params[:whatsapp],
      email: params[:email],
      game: params[:game],
    )

    redirect_to '/admin/coaches'
  end

  def delete_coach
    unless session[:admin]
      redirect_to '/admin', status: 403
      return
    end

    coach = Coach.find_by_id params[:id]
    coach.destroy
    redirect_to '/admin/coaches'
  end

  def requests
    unless session[:admin]
      redirect_to '/admin', status: 403
      return
    end

    @coaches_from = {}

    coaches = Coach.all

    coaches.each do |coach|
      if @coaches_from[coach.game] == nil
        @coaches_from[coach.game] = [ coach ]
      else
        @coaches_from[coach.game] << coach
      end
    end

    @requests = CoachRequest.order created_at: :desc
    render :requests
  end
end

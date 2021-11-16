class AdminController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    if session[:admin]
      redirect_to '/admin/coaches'
    else
      render :index
    end
  end

  def login
    password = AdminPassword.all[0].value

    if password == nil
      render plain: 'Não há um administrador cadastrado.'

    elsif params[:password] == password
      session[:admin] = true
      redirect_to '/admin/coaches'

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
      redirect_to '/admin'
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
      redirect_to '/admin'
      return
    end

    coach = Coach.find_by_id params[:id]
    coach.destroy
    redirect_to '/admin/coaches'
  end
end

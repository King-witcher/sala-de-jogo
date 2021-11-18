class CoachController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET
  def index
    if session[:coach_id] == nil
      redirect_to '/coach/login'
    else
      redirect_to '/coach/lectures'
    end
  end

  # GET
  def login_form
    if session[:coach_id] == nil
      render :login_form
    else
      redirect_to '/coach/lectures'
    end
  end

  # POST
  def login
    unless session[:coach_id] == nil
      redirect_to '/coach/lectures'
      return
    end

    @username = params[:username]
    coach = Coach.find_by_username @username

    if coach
      if coach.password == params[:password]
        session[:coach_id] = coach.id
        redirect_to '/coach/lectures'
      else
        @wrong_field = true
        render :login_form
      end
    else
      @wrong_field = true
      render :login_form
    end
  end

  # DELETE
  def logout
    session[:coach_id] = nil
    redirect_to '/'
  end

  # GET /coach/lectures
  def lectures
    if session[:coach_id] == nil
      redirect_to '/coach/login'
      return
    end

    @coach = Coach.find_by_id session[:coach_id]
    @lecture_list = PendingLecture.where coach: @coach

    if @coach.password == '123456'
      @bad_password = true
    end
    render :lectures
  end

  # POST /coach/lectures
  def finish_lecture
    if session[:coach_id] == nil
      redirect_to '/coach/login'
      return
    end

    lecture = PendingLecture.find_by_id params[:lecture_id]
    lecture.destroy
    redirect_to '/coach/lectures'
  end

  # GET /coach/change_password
  def new_password_form
    if session[:coach_id] == nil
      redirect_to '/coach/login'
      return
    end

    render :new_password_form
  end

  # POST /coach/change_password
  def change_password
    if session[:coach_id] == nil
      redirect_to '/coach/login'
      return
    end

    user = Coach.find_by_id session[:coach_id]

    if params[:old] != user.password
      @wrong_old = true
      render :new_password_form
    elsif params[:new] != params[:confirmation]
      @wrong_match = true
      render :new_password_form
    else
      user.password = params[:new]
      user.save
      redirect_to '/coach'
    end
  end
end

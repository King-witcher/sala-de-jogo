class RequestLectureController < ApplicationController
  skip_before_action :verify_authenticity_token

  $prices = [30, 35, 40]

  def index
    @game_options = []
    coaches = Coach.select('distinct(game)')
    coaches.each do |coach|
      unless @game_options.include? coach.game
        @game_options.append coach.game
      end
    end

    render :index
  end

  # POST
  def _request
    request = CoachRequest.new(
      game: params[:game],
      tier: params[:tier],
      description: params[:description],

      name: params[:name],
      email: params[:email],
      whatsapp: params[:whatsapp],
      cpf: params[:cpf],
    )

    request.save

    @request_id = request.id
    @tier = request.tier

    render :success
  end
end

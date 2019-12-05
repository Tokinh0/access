class AccessesController < ApplicationController
  skip_before_action :verify_authenticity_token
  # GET /accesses
  # GET /accesses.json
  def index
    @accesses = Access.all
  end

  # POST /accesses
  # POST /accesses.json
  def create
    @access = Access.new(access_params)
    @access.save
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def access_params
      params.require(:access).permit(:longitude, :latitude, :ip)
    end
end

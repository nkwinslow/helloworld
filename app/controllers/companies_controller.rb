class CompaniesController < ::ActionController::Base
  def show
    @company = ::Zuul::Company.find_by(:guid => params[:id])
    render json: @company.to_json 
  end

end
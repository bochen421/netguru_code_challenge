class CitationsController < ApplicationController
  def index
    @citations = Citation.all.order(id: :desc)
  end

  def new
    @citation = Citation.new
  end

  def create
    @citation = Citation.new(citation_params)
    if @citation.save
      redirect_to citations_path, success: t('.citation_created')
    else
      flash.now[:danger] = t('.failed_to_create_citation')
      render :new
    end
  end

  private

  def citation_params
    params.require(:citation).permit(:body)
  end
end

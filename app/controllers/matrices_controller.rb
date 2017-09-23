class MatricesController < ApplicationController
  before_action :authenticate_user!
  include MatrixDefinitions

  def new
    @matrices = [javascript_matrix]
  end
end

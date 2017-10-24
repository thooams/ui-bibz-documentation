class Components::Forms::SimpleFormController < Components::FormsController

  def inputs
    @user = User.new params[:user].nil? ? {} : inputs_params
  end

  def inputs_params
    params.require(:user).permit(:name, :country_id, :price, :company, :price_formula, email: [])
  end

end

class Components::Forms::SimpleFormController < Components::FormsController

  def inputs
    @user= User.first
  end

end

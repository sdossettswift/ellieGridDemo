class UsersController < ApplicationController
 before_action :set_user, only: [:show,  :edit, :update, :destroy]
 before_action :secure, only: [:show,  :edit, :update, :destroy]

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)

    respond_to do |format|
    if @user.save
      session[:user_id] = @user.id
      # Sends email to user when user is created.
      HelloMailer.hello_email(@user).deliver_later

      @box = @user.boxes.build
      @box.save

      @first = @box.pills.build(slot: "First")
      @first.save
      puts @first.slot

      @second = @box.pills.build(slot: "Second")
      @second.save
      puts @second.slot

      @third = @box.pills.build(slot: "Third")
      @third.save
      puts @third.slot

      @fourth = @box.pills.build(slot: "Fourth")
      @fourth.save
      puts @fourth.slot

      @fifth = @box.pills.build(slot: "Fifth")
      @fifth.save
      puts @fifth.slot

      @sixth = @box.pills.build(slot: "Sixth")
      @sixth.save
      puts @sixth.slot

      @seventh = @box.pills.build(slot: "Seventh")
      @seventh.save
      puts @seventh.slot


      format.html { redirect_to root_path, notice: 'Welcome! Your account has been created.' }
      format.json { render :show, status: :created, location: @user }
    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

	def edit

	end

	def update
		if @user.update(user_params)
			redirect_to dashboard_path, notice: "User details updated!"
		else
			render :edit
		end
	end

	def show

	end

	def index
		@users = User.all
	end



	private
	def user_params
		params.require(:user).permit(:email, :password_digest, :password_confirmation, :password, :name)
	end

	def set_user
		@user = User.find_by id: params[:id]
	end

	def secure
		if @current_user.nil?
			redirect_to sign_in_path, alert: "Please sign in."
		end
	end

end

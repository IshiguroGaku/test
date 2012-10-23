class TestController < ApplicationController
  def index
    #@tran = Tran.find(2)
	@user = User.all
  end

  def new
  	@user = User.new()
	@address = Address.new()
	@fax = FaxCase.new()
	@tran = Tran.new()
  end

  def create
	@tran = Tran.new(params[:tran])
	@user = User.create!(params[:user])
    @address = Address.create!(params[:address])
	@fax = FaxCase.create!(params[:fax])
	@tran.user_id = @user.id
	@tran.faxcase_id = @fax.id
	#@tran = Tran.create!(param)

	#@user.save
	#@address.save
	@tran.save
	redirect_to test_index_path, notice: 'success'

  end

  def destroy
	@user = User.destroy(params[:id])
	redirect_to test_index_path
  end

  def upload
#    file = params[:file][:jpg]
    date = Time.now.strftime("%Y%m%d") + "/"
    File.open(Rails.root.to_s + "/tmp/file/" + params[:file][:jpg].original_filename, "wb") do |f|
#      File.open(Rails.root.to_s + "/tmp/file/" + params[:file][:jpg].original_filename) do |f|
      f.write(params[:file][:jpg].read)
    end
    redirect_to new_test_path
  end
end
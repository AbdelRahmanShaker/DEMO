class NotificationsController < ApplicationController
	 before_action :set_notification, only: [:show, :edit, :update, :destroy]
  #  before_action :set_NUM
  #  before_filter :set_NUM
	def index
		@notifications = Notification.all
	end

	def destroy
	@notification.destroy
    respond_to do |format|
      format.html { redirect_to notifications_url, notice: 'Notifications was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def show
      @notification.destroy
    respond_to do |format|
      format.html { redirect_to notifications_url, notice: 'Notifications was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
      def set_notification
      @notification = Notification.find(params[:id])
    end
    def set_NUM
      @NUM_OF_NOTIFICATIONS= Notification.count
    end

end

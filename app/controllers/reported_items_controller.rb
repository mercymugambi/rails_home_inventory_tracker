class ReportedItemsController < ApplicationController
#index: Retrieves all reported items.
#show: Retrieves a specific reported item.
#new and create: Handles creation of new reported items.
#edit and update: Handles editing and updating of existing reported items.
#destroy: Handles deletion of reported items.
    
    def index #READ
        @reported_items = ReportedItem.all
    end

    def show
        @reported_item = ReportedItem.find(params[:id])
    end

    def new #CREATE
        @reported_item = ReportedItem.new
    end

    def edit
        @reported_item = ReportedItem.find(params[:id])
      end

    def update #UPDATE
        @reported_item = ReportedItem.find(params[:id])
    
        if @reported_item.update(reported_item_params)
          redirect_to @reported_item, notice: 'Reported item was successfully updated.'
        else
          render :edit
        end
    end
    
    def destroy #DELETE
        @reported_item = ReportedItem.find(params[:id])
        @reported_item.destroy
        redirect_to reported_items_url, notice: 'Reported item was successfully destroyed.'
    end

    private

    def reported_item_params
        params.require(:reported_item).permit(:name, :status)
    end

end

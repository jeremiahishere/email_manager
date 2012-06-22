# Controller for the ManagedEmail model
# Allows users to search for and view managed emails but does not allow editing or creation
# Includes optional support for meta_search and kaminari gems
# @author Jeremiah Hemphill
module EmailManager
  class ManagedEmailsController < ::ApplicationController
    unloadable

    # shows all managed emails with pagination and sorting
    # @param [Hash] params May include information for meta_search and kaminari if the gems are installed
    def index
      # Search with meta_search
      if EmailManager::ManagedEmail.respond_to?(:search)
        @search = EmailManager::ManagedEmail.search(params[:search])
        @search_enabled = true
      else
        @search = EmailManager::ManagedEmail.all
        @search_enabled = false
      end 

      # Paginate with kaminari
      begin
        @managed_emails = Kaminari.paginate_array(@search.all).page(params[:page])
        @pagination_enabled = true
      rescue NameError => e
        @managed_emails = @search
        @pagination_enabled = false
      end

      respond_to do |format|
        format.html
      end 
    end 

    # shows a single managed email's body text
    # @param [String] id The id of the selected managed email
    def show
      @managed_email = EmailManager::ManagedEmail.find(params[:id])

      respond_to do |format|
        format.html
      end 
    end 

    def body
      @managed_email = EmailManager::ManagedEmail.find(params[:id])

      respond_to do |format|
        format.html { render :text => @managed_email.body }
      end 
    end 
  end
end

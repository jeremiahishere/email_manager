# Controller for the ManagedEmail model
# Allows users to search for and view managed emails but does not allow editing or creation
# Includes optional support for meta_search and kaminari gems
# @author Jeremiah Hemphill
module EmailManager
  class ManagedEmailsController < ApplicationController
    unloadable

    # shows all managed emails with pagination and sorting
    def index
      # Search with meta_search
      if EmailManager::ManagedEmail.respond_to?(:search)
        @search = EmailManager::ManagedEmail.search(params[:search])
        @search_enabled = true
      else
        @search = EmailManager::ManagedEmail.all
      end 

      # check if kaminari exists
      begin
        require "kaminari"
        @pagination_enabled = true
      rescue LoadError => e
        @pagination_enabled = false
      end

      # Paginate with kaminari
      if @pagination_enabled
        @managed_emails = Kaminari.paginate_array(@search.all).page(params[:page])
      else
        @managed_emails = @search
      end

      respond_to do |format|
        format.html
      end 
    end 

    # shows a single managed email
    # @param [String] id The id of the selected managed email
    def show
      @managed_email = ManagedEmail.find_by_id(params[:id])

      respond_to do |format|
        format.html
      end 
    end 

    def body
      @managed_email = ManagedEmail.find_by_id(params[:id])

      respond_to do |format|
        format.html { render :text => @managed_email.body }
      end 
    end 
  end
end

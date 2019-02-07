module V1
  class EventsController < ApplicationController

    def index
      page_number = params.fetch(:page, '')
      per_page = params.fetch(:per_page, '')
      @events = Event.all.page(page_number).per(per_page)

      json_response(@events)
    end

    def issues
      page_number = params.fetch(:page, '')
      per_page = params.fetch(:per_page, '')
      @events = Event.issue_by_number(params[:number]).page(page_number).per(per_page)

      json_response(@events)
    end

  end
end

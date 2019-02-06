class CallbackService

  def initialize(params)
    @event = Events::Build.call(params)
    @organization = Organizations::Build.call(params[:organization])
    @sender = Senders::Build.call(params[:sender])
    @repository = Repositories::Build.call(params[:repository])
  end

  def valid?
    valid = []
    valid << Events::Validator.call(@event)
    valid << Organizations::Validator.call(@organization)
    valid << Repositories::Validator.call(@repository)
    valid << Senders::Validator.call(@sender)
    valid.include?(false)
  end

  def save
    ActiveRecord::Base.transaction do
      @event.save
      @event.build_sender(@sender.attributes).save if @sender.present?
      @event.build_organization(@organization.attributes).save if @organization.present?
      @event.build_repository(@repository.attributes).save if @repository.present?
    end
  end

end

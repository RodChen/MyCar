module CurrentLease
	extend ActiveSupport::Concern

	private

		def set_lease
			@lease = Lease.find(session[:lease_id])
		rescue ActiveRecord::RecordNotFound
			@lease = Lease.create
			session[:lease_id] = @lease.id
		end
end

module UsersHelper

	def gravatar_for(user, options = { size: 80})
		size = options[:size]
		gravatar_id = Digest::MD5::hexdigest(user.region)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		image_tag(gravatar_url, alt: user.tk, class: "gravatar")
	end

end

module UsersHelper
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.username.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.tk, class: "gravatar")
	end
end

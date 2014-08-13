class OauthUser < ActiveRecord::Base

	def self.test(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|

	puts  "----------------------------------------------------------------"
	puts auth.inspect
	puts  "*********************************************************"
	puts auth.info['image']
	
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info['name']
      user.image = auth.info['image']
      user.oauth_token = auth.credentials.token
	  DateTime.now   tempTime = (DateTime.now) + (60 * 60 * 24)  
	  if(auth.credentials.expires_at)	  
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
	  else
	  user.oauth_expires_at = tempTime;
	  end
	   if user.save
	   	return user
	   end
    end

  end
end

class Identity < ActiveRecord::Base
  belongs_to :user

  # TODO: Catch complex situations(duplicate email and such)
  def self.from_omniauth(auth)
    identity = Identity.where(provider: auth.provider, uid: auth.uid).first_or_initialize
    if identity.user.nil?
      identity.user = User.from_omniauth(auth)      
    end
    identity.save
    return identity
  end

end

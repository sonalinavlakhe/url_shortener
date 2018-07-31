class ShortenedUrl < ApplicationRecord
  before_create :generate_short_url
  LENGTH = 8

def generate_short_url
  url = ([*('a'..'z'), *('0'..'9')]).sample(LENGTH).join
  old_url = ShortenedUrl.where(short_url: url).last
  if old_url.present?
    self.generate_short_url
  else
    self.short_url = url
  end
end

end

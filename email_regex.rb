VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_valid_email? email
  email =~ VALID_EMAIL_REGEX
end

p is_valid_email?("sk@g.com") ? "valid" : "invalid"
p is_valid_email?("skg.com") ? "valid" : "invalid"
p is_valid_email?("_s_k@g.com") ? "valid" : "invalid"
p is_valid_email?("s.k@g") ? "valid" : "invalid"
p is_valid_email?("sk9@g.com") ? "valid" : "invalid"

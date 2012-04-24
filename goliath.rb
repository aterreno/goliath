require 'goliath'

class Hello < Goliath::API
  def response(env)

    [200, {}, "Hello World #{env['HTTP_USER_AGENT']} from #{env['SERVER_SOFTWARE']} running at port:#{env['SERVER_PORT']} @ #{Time.now.strftime("%H:%M:%S,%L")}"]
  end
end
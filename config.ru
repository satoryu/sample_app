require 'rack'
require 'rack/response'

class Hoge
  def call(env)
    res = Rack::Response.new
    res['Content-Type'] = 'text/plain'
    res.write('Hello')

    res.finish
  end
end

run Hoge.new

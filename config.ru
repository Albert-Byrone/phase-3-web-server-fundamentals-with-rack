require 'rack'
require 'pry'

class App
  def call(env)
    path = env['PATH_INFO']

    puts path
    if path == '/'
      [200, { 'Content-Type' => 'text/html' },  ["<h2>Hello <em>World</em>!</h2>"]]
    elsif path == '/potato'
      [200, { "Content-Type" => "text/html" }, ["<p>Boil 'em, mash 'em, stick 'em in a stew</p>"]]
    else
      [404, { "Content-Type" => "text/html" }, ["404 Not Found"]]
    end
  end
end

run App.new 
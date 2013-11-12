module Application
  extend self

  require_relative 'application/assets'

  def root
    File.expand_path('.')
  end

  def call(env)
    body = Tilt.new('views/index.slim').render
    [200, { 'Content-Type' => 'text/html' }, [body]]
  end
end

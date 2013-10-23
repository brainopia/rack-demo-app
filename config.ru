def app(env)
  [200, {}, ['hello']]
end

run method(:app)

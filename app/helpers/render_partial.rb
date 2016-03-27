# A helper that will load in a partial
# https://github.com/JoeeGrigg/sinatra-helpers

helpers do
  def render_partial(template)
    haml template, :layout => false
  end
end

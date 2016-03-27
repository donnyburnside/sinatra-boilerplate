# A helper for getting multiple view directories working
# http://www.sinatrarb.com/intro#Looking%20Up%20Template%20Files

helpers do
  def find_template(views, name, engine, &block)
    Array(views).each { |v| super(v, name, engine, &block) }
  end
end

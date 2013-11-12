module Application::Assets
  extend self

  def sprockets
    @sprockets ||= Sprockets::Environment.new
  end

  def setup_paths!(root)
    sprockets.append_path root + '/app/assets'
  end

  def setup_gem_paths!(gem_name)
    setup_paths! Gem::Specification.find_by_name(gem_name).gem_dir
  end
end

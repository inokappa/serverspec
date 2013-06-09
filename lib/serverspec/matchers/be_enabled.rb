RSpec::Matchers.define :be_enabled do
  match do |name|
    if name.respond_to?(:enabled?)
      name.enabled?
    else
      backend.check_enabled(name)
    end
  end
end

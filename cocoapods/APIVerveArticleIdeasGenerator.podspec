Pod::Spec.new do |s|
  s.name             = 'APIVerveArticleIdeasGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Article Ideas Generator creates article ideas and headline angles for any supplied topic.'
  s.description      = <<-'DESC'
Article Ideas Generator creates article ideas and headline angles for any supplied topic. Pass a keyword up to 50 characters to receive a list of suggested titles and the total idea count.

This iOS/macOS SDK provides a convenient way to access the Article Ideas Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/articleideas?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/articleideas-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveArticleIdeasGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end

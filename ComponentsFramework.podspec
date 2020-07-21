
Pod::Spec.new do |spec|
  spec.name         = "ComponentsFramework"
  spec.version      = "1.0.0"
  spec.summary      = "ComponentsFramework consists of reusable components."
  spec.description  = "ComponentsFramework consists of reusable components such as AmountText, AccountTitle. It also provides a lot of configurable properties"
  spec.homepage     = "https://parulvats.com"
  spec.license      = "MIT"
  spec.author       = { "Parul Vats" => "pvats@tekhsters.nl" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :path => '.' }
  spec.source_files  = "ComponentsFramework/**/*"
  #spec.exclude_files = "ComponentsFramework/Extensions/**/*"
end

Pod::Spec.new do |s|
  s.name = "HTAlreadyExistedLibrary"
  s.version = "0.3.0"
  s.summary = "A pod of HTAlreadyExistedLibrary."
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"hanteng"=>"1246901487@qq.com"}
  s.homepage = "https://github.com/chengxuyuanxiaoka/HTAlreadyExistedLibrary"
  s.description = "Add HTAlreadyExistedLibrary of the pod here,this is a san fang."
  s.source = { :path => '.' }

  s.ios.deployment_target    = '9.0'
  s.ios.vendored_framework   = 'ios/HTAlreadyExistedLibrary.framework'
end

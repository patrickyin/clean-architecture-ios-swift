platform :ios, '9.0'
use_frameworks!

def rx
  pod 'RxSwift', '~> 4.0'
  pod 'RxCocoa', '~> 4.0'
end

def testing_pods
    pod 'RxTest', '~> 4.0'
    pod 'RxBlocking', '~> 4.0'
    pod 'Nimble'
    pod 'Quick'
end

target 'clean-architecture-ios' do
  rx
  target 'clean-architecture-iosTests' do
    inherit! :search_paths
    testing_pods
  end
end

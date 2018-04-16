cask 'winbox-mac' do
  version '3.13'
  sha256 '6cace30846d7ffdf270225e68e28045bf1f567e846cee6c1d0817f1cef328412'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom',
          checkpoint: 'fc651e7a35979e2bce7c8603ef6883e9992ea902320cbd658a0f11e8e158b8ea'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox_*'
end

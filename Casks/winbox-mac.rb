cask 'winbox-mac' do
  version '3.14'
  sha256 'f74b40387942b6b9c36800d3190965bfaa158571ff0d5062f582e3c3d945ac64'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom',
          checkpoint: '3d2d8104116e4a7044bbba9afb52b24fdfe44f73c5590856f61cb86eac6f6bbb'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox_*'
end

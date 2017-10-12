cask 'winbox-mac' do
  version '3.11'
  sha256 '9bf39b541d1d84d0dbf05863eb814062faa16e3a0fb03ca12cc720fef903d7ad'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom',
          checkpoint: '543cc8e6905c96b123cc082a660bdf58a990296ed83e1f33786bcaaa7ebc007c'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox_*'
end

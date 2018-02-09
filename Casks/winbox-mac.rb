cask 'winbox-mac' do
  version '3.12'
  sha256 '1ed736b9021288d119799b9d22fb0a2b2c66a3e0525c8a83631963c18b934365'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom',
          checkpoint: '7e246a1897b912fa834e185fa96fa6db5195c8da805b390ce4f16d8f8dedd393'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox_*'
end

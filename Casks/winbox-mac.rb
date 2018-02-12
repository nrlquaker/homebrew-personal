cask 'winbox-mac' do
  version '3.12-fix'
  sha256 '5e4bd4ecb59aa79b133473ead48e04ffd92a8e34b12753914d2a490e80f60b8e'

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  appcast 'https://github.com/nrlquaker/winbox-mac/releases.atom',
          checkpoint: 'ab54d4055e6b0cd962e05244f06ff12a8fc64895f19964f988051a7cbedd3531'
  name 'Winbox-mac'
  homepage 'https://github.com/nrlquaker/winbox-mac/'

  app 'Winbox-mac.app'

  zap trash: '~/Library/Application Support/com.mikrotik.winbox_*'
end

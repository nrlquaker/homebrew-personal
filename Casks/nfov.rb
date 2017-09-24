cask 'nfov' do
  version '1.0.0'
  sha256 '5c2e3c59dc7afef41a85bdae6bf7fce6f11f91b15eca567642c894fc688ae99e'

  url "https://github.com/nrlquaker/nfov/releases/download/v#{version}/nfov-darwin-x64-#{version}.zip"
  appcast 'https://github.com/nrlquaker/nfov/releases.atom',
          checkpoint: '137f53b2e262b8d12833b0b2706f5b2fa12947b4f912002c128193c41e1a5964'
  name 'nfov'
  homepage 'https://github.com/nrlquaker/nfov'

  app 'nfov.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.nfov.sfl',
                '~/Library/Saved Application State/com.electron.nfov.savedState',
              ],
      trash:  [
                '~/Library/Application Support/nfov',
                '~/Library/Preferences/com.electron.nfov.helper.plist',
                '~/Library/Preferences/com.electron.nfov.plist',
              ]
end

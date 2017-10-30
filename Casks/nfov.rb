cask 'nfov' do
  version '1.0.2'
  sha256 '1ccf520ee0ad10ef67c3aab5fe564bc1cf81b9e9600417712d35437de096c0f6'

  url "https://github.com/nrlquaker/nfov/releases/download/v#{version}/nfov-darwin-x64-#{version}.zip"
  appcast 'https://github.com/nrlquaker/nfov/releases.atom',
          checkpoint: 'dbc6f9b5fc7e93ce8aacf3400dd6b32bbd397b93b7e1f34c547fd97b148b131b'
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

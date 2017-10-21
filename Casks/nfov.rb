cask 'nfov' do
  version '1.0.1'
  sha256 '56702075fc5188845d982d69980cae694e2888850ef20f2e26266043e591e639'

  url "https://github.com/nrlquaker/nfov/releases/download/v#{version}/nfov-darwin-x64-#{version}.zip"
  appcast 'https://github.com/nrlquaker/nfov/releases.atom',
          checkpoint: 'a72eff8c4a5bd5b2203531a0934e4a1527bbeef4ffaa60b95b3cba6ddf97200c'
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

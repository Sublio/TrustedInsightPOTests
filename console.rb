target = ARGV[0]

unless system("bundle version")
  puts "Can't find bundler. Check your ruby environment."
  puts "If your using ~/.calabash then run:"
  puts <<EOF

export GEM_HOME=~/.calabash
export GEM_PATH=~/.calabash
export PATH="$PATH:$HOME/.calabash/bin"
EOF
  exit(false)
end

if target == 'android'
  exec("bundle exec calabash-android console prebuilt/TrustedInsight.apk")
elsif target == 'ios'
  exec("APP_BUNDLE_PATH=prebuilt/TrustedInsight.app bundle exec calabash-ios console")
else
    puts "Invalid target #{target}"
end

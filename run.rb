#!/usr/bin/env ruby
target = ARGV.shift

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

target = 'android'

if target == 'android'
  exec("export APP=prebuilt/TrustedInsight.apk && bundle exec calabash-android run $APP -p android features/feed.feature  #{ARGV.join(' ')}")
elsif target == 'ios'
  exec("export APP=prebuilt/TrustedInsight.app && export APP_BUNDLE_PATH=$APP && bundle exec cucumber -p ios features/feed.feature  #{ARGV.join(' ')}")
else
  puts "Invalid target #{target}"
end



#if you wanna take a report after test, add this command after exec command --format html --out reports.html

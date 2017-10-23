module Docs
  class GoogleAppsScript < UrlScraper
    self.name = 'google_apps_script'
    self.slug = 'google_apps_script'
    self.type = 'google_apps_script'
    # the release info is based on the latest release notes dated on:
    # https://developers.google.com/apps-script/releases/
    # self.release = '10/10/2017'
    self.base_url = 'https://developers.google.com/apps-script/reference'
    # self.root_path = 'calendar.html'
    self.links = {
      home: 'https://developers.google.com/apps-script',
      code: 'https://github.com/google/google-apps-script-samples'
    }

    html_filters.push 'google_apps_script/entries', 'google_apps_script/clean_html'

    # options[:container] = '#gc-wrapper'
    # options[:only_patterns] = [/\Acalendar\//]
    options[:attribution] = <<-HTML
      Content is licensed under the Creative Commons Attribution 3.0 License, <br>
      and code samples are licensed under the Apache 2.0 License.
    HTML
  end
end
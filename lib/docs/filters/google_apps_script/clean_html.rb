module Docs
    class GoogleAppsScript
      class CleanHtmlFilter < Filter
        def call
          css('hr').remove
          css('#changelog').remove 
  
          # Set id attributes on <h3> instead of an empty <a>
          # css('h3').each do |node|
          #   node['id'] = node.at_css('a')['id']
          # end
  
          # Make proper table headers
          # css('td.header').each do |node|
          #   node.name = 'th'
          # end
  
          # # Remove code highlighting
          # css('pre').each do |node|
          #   node.content = node.content
          # end
  
          doc
        end
      end
    end
  end
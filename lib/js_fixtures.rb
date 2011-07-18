RSpec::Rails::ControllerExampleGroup.class_eval do
  fixture_dir = 'spec/javascripts/helpers'

  # Saves the markup to a fixture file using the given name
  def save_fixture(markup, name)
    fixture_path = File.join(Rails.root.to_s, fixture_dir)
    Dir.mkdir(fixture_path) unless File.exists?(fixture_path)

    fixture_file = File.join(fixture_path, "#{name}.js")

    fixture_function = "function load#{name}Fixture(){
  /*:DOC +="+markup+"*/
    }"
    File.open(fixture_file, 'w') do |file|
      file.puts(fixture_function)
    end
  end

  def save_js_fixture(markup, name)
    fixture_path = File.join(Rails.root.to_s, fixture_dir)
    Dir.mkdir(fixture_path) unless File.exists?(fixture_path)

    fixture_file = File.join(fixture_path, "#{name}.js")

    File.open(fixture_file, 'w') do |file|
      file.puts(markup)
    end
  end

  # From the controller spec response body, extracts html identified
  # by the css selector.
  def html_for(selector)
    doc = Nokogiri::HTML(response.body)

    content = doc.css(selector).first.to_s

    convert_body_tag_to_div(content)
  end

  # Many of our css and jQuery selectors rely on a class attribute we
  # normally embed in the <body>. For example:
  #
  # <body class="workspaces show">
  #
  # Here we convert the body tag to a div so that we can load it into
  # the document running js specs without embedding a <body> within a <body>.
  def convert_body_tag_to_div(markup)
    markup.gsub("<body", '<div').gsub("</body>", "</div>")
  end
end


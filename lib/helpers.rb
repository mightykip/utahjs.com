# Adds a code block to the page
def code(path)
  language = path.match(/\.([^\.]+)$/)[1]
  code     = "<pre><code data-language='#{language}'>"
  name     = @item.identifier.split('/').last
  file     = File.new('content/articles/' + name + '/' + path, 'r')
  while (line = file.gets)
    code += "#{line}"
  end
  code += "</code></pre>"
  file.close

  code
end

def img_path(img)
  @item.base_route + '/' + img
end

def img(img)
  path = img_path img
  "<img src='#{path}'>"
end

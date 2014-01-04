require 'erb'

class App
  def call(env)
    [
        200,
        {
            'Content-Type' => 'text/html',
            'Cache-Control' => 'public, max-age=0'
        },
        body
    ]
  end

  private
  def body
    if File.exist?('public/index.html')
      File.open('public/index.html', File::RDONLY)
    else
      [ERB.new(File.open('public/index.html.erb', File::RDONLY).read).result]
    end
  end
end
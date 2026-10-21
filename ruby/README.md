# Article Ideas Generator API - Ruby Gem

Article Ideas Generator creates article ideas and headline angles for any supplied topic. Pass a keyword up to 50 characters to receive a list of suggested titles and the total idea count.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_articleideas'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_articleideas
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_articleideas'

# Initialize the client
client = APIVerve::Articleideas::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ topic: "software and technology" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ topic: "software and technology" })
  puts response["data"]
rescue APIVerve::Articleideas::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Articleideas::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Articleideas::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "topic": "software and technology",
    "topicIdeas": 3,
    "topics": [
      "The Future of AI: How Artificial Intelligence Will Transform Software and Technology",
      "Cybersecurity in the Modern Age: Protecting Your Data in a Connected World",
      "Cloud Computing Explained: A Beginner's Guide to Understanding the Cloud"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/articleideas?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/articleideas?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/articleideas?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).

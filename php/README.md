# Article Ideas Generator API - PHP Package

Article Ideas is a simple tool for generating article ideas. It returns a list of article ideas.

## Installation

Install via Composer:

```bash
composer require apiverve/articleideas
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Articleideas\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['topic' => 'software and technology']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Articleideas\Client;
use APIVerve\Articleideas\Exceptions\APIException;
use APIVerve\Articleideas\Exceptions\ValidationException;

try {
    $response = $client->execute(['topic' => 'software and technology']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/articleideas?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/articleideas?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/articleideas?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

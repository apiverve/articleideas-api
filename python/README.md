Article Ideas Generator API
============

Article Ideas is a simple tool for generating article ideas. It returns a list of article ideas.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Article Ideas Generator API](https://apiverve.com/marketplace/articleideas?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-articleideasgenerator
```

Using `pip3`:

```bash
pip3 install apiverve-articleideasgenerator
```

---

## Configuration

Before using the articleideas API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_articleideasgenerator.apiClient import ArticleideasAPIClient

# Initialize the client with your APIVerve API key
api = ArticleideasAPIClient("[YOUR_API_KEY]")

query = { "topic": "software and technology" }

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Article Ideas Generator API documentation is found here: [https://docs.apiverve.com/ref/articleideas](https://docs.apiverve.com/ref/articleideas?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_articleideasgenerator.apiClient import ArticleideasAPIClient

# Initialize the client with your APIVerve API key
api = ArticleideasAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = { "topic": "software and technology" }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "topic": "software and technology",
    "topicIdeas": 3,
    "topics": [
      "The Future of AI: How Artificial Intelligence is Revolutionizing Software Development",
      "Breaking Barriers: Exploring the Latest Innovations in Cybersecurity Technology",
      "Beyond the Metaverse: Emerging Trends and Technologies Shaping the Digital Landscape"
    ]
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `ArticleideasAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_articleideasgenerator.apiClient import ArticleideasAPIClient, ArticleideasAPIClientError

api = ArticleideasAPIClient("[YOUR_API_KEY]")

query = { "topic": "software and technology" }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except ArticleideasAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_articleideasgenerator.apiClient import ArticleideasAPIClient, ArticleideasAPIClientError

api = ArticleideasAPIClient("[YOUR_API_KEY]")

query = { "topic": "software and technology" }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except ArticleideasAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_articleideasgenerator.apiClient import ArticleideasAPIClient, ArticleideasAPIClientError

query = { "topic": "software and technology" }

# Using context manager ensures proper cleanup
with ArticleideasAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except ArticleideasAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_articleideasgenerator.apiClient import ArticleideasAPIClient

# Enable debug mode
api = ArticleideasAPIClient("[YOUR_API_KEY]", debug=True)

query = { "topic": "software and technology" }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_articleideasgenerator.apiClient import ArticleideasAPIClient

api = ArticleideasAPIClient("[YOUR_API_KEY]")

query = { "topic": "software and technology" }

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

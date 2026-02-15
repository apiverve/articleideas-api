# Article Ideas Generator API - Dart/Flutter Client

Article Ideas is a simple tool for generating article ideas. It returns a list of article ideas.

[![pub package](https://img.shields.io/pub/v/apiverve_articleideas.svg)](https://pub.dev/packages/apiverve_articleideas)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Article Ideas Generator API](https://apiverve.com/marketplace/articleideas?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_articleideas: ^1.1.13
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_articleideas/apiverve_articleideas.dart';

void main() async {
  final client = ArticleideasClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'topic': 'software and technology'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Article Ideas Generator API](https://apiverve.com/marketplace/articleideas?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/articleideas](https://docs.apiverve.com/ref/articleideas?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)

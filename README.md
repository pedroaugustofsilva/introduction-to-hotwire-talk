# Introduction to Ruby on Rails: Creating Modern Applications with Hotwire

This project serves as a demonstration for the talk "Introduction to Ruby on Rails: Creating Modern Applications with Hotwire". It showcases a basic version of a Twitter-like social media platform, demonstrating the power and simplicity of Ruby on Rails with Hotwire.

## Project Overview

This application allows users to:
- Log in
- Share thoughts (posts)
- Experience real-time updates

The primary goal is to illustrate how Turbo can transform a static website into a dynamic one without relying on custom JavaScript. Instead, it leverages the Turbo stack to create a responsive and interactive user experience.

## Key Features

- User authentication
- Post creation and display
- Real-time updates using Turbo Streams
- Responsive design

## Technology Stack

- Ruby on Rails
- Turbo and Stimulus (part of the Hotwire stack)
- SQLite

## Demo

![X Social Demo](docs/x_social.gif)

## Getting Started

### Prerequisites

- Ruby 3.3.4
- SQLite

### Setup

1. Clone the repository:
   ```
   git clone git@github.com:pedroaugustofsilva/introduction-to-hotwire-talk.git
   cd your-repo-name
   ```

2. Install dependencies:
   ```
   bundle install
   ```

3. Set up the database:
   ```
   rails db:prepare
   ```

4. Start the Rails server:
   ```
   rails server
   ```

5. Visit `http://localhost:3000` in your web browser to see the application in action.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).

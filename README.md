# Alchemy CMS Feedback Essences

Adds EssenceFeedback essence to your Alchemy CMS powered site.

This version is compatible with Alchemy version 3.0 and above only.

## Installation

**Make sure you have Alchemy CMS installed.**

Add this line to your application's Gemfile:

    gem 'alchemy-feedback_essences', github: 'belka-studio/alchemy-feedback_essences'

And then execute:

    $ bundle


## Usage

1. After installing, prepare your database with:

        $ rake alchemy-feedback_essences:install:migrations db:migrate

2. In your `elements.yml` add new essence to your element of choice.

        # elements.yml
        - name: content
          contents:
          - name: feedback
            type: EssenceFeedback

That's it!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

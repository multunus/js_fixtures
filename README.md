# JS Fixtures

A gem that allows controller specs to generate markup which can be used as
HTML fixtures within javascript tests written using Jasmine and JSTestDriver.

## Usage

- Add the dependency for your gem in Gemfile:

      gem 'js_fixtures',:require => false

- Add the require in spec_helper.rb

      require 'js_fixtures'

- Within the controller specs, call the method to create fixtures as follows:

      save_fixture(html_for('body'),'Signup')

The above will save the content of the body in file Signup.js in the path 'spec/javascripts/helpers/'. The file will have a method loadSignupFixture which contains the HTML fixture.

- Call the same in the JS tests in beforeEach section:

```ruby
beforeEach(function () {
  $(this).ready(function () {
    loadSignupFixture()
  });
});
```

## Contributing

See the [CONTRIBUTING] document.
Thank you, [contributors]!

  [CONTRIBUTING]: CONTRIBUTING.md
  [contributors]: https://github.com/multunus/js_fixtures/graphs/contributors

## License

JS Fixtures is Copyright (c) 2016 Multunus Software Pvt. Ltd.
It is free software, and may be redistributed
under the terms specified in the [LICENSE] file.

  [LICENSE]: /LICENSE

## About

![multunus](https://s3.amazonaws.com/multunus-images/Multunus_Logo_Vector_resized.png)

JS Fixtures is maintained and funded by Multunus Software Pvt. Ltd.
The names and logos for Multunus are trademarks of Multunus Software Pvt. Ltd.

We love open source software!
See [our other projects][community]
or [hire us][hire] to help build your product.

  [community]: http://www.multunus.com/community?utm_source=github
  [hire]: http://www.multunus.com/contact?utm_source=github

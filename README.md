# Email-Analytics&nbsp;&nbsp;[![Build Status](https://travis-ci.org/andreamazza89/email-analytics.svg?branch=master)](https://travis-ci.org/andreamazza89/email-analytics)&nbsp;[![Coverage Status](https://coveralls.io/repos/github/andreamazza89/email-analytics/badge.svg?branch=master)](https://coveralls.io/github/andreamazza89/email-analytics?branch=master)

A simple Rails app that persists email data received via webhook and displays
some analytics on the data.

### Installation
- Install ruby with [rvm](https://rvm.io/rvm/install), then install [bundler](http://bundler.io/)
- Clone this repo and move into it ```git clone https://github.com/andreamazza89/email-analytics && cd email-analytics```
- Run bundler to install all dependencies ```bundle install```
- Run all tests to check that everything is working ```rspec```
- Make sure the webhook is setup to send data in the body of an HTTP POST request to *hostaddress*/email_events, formatted as follows: __*{"Address":"test@test.test","EmailType":"Welcome","Event":"send","Timestamp":1432820696}*__
- Run the server ```bin/rails s```
- Visit *hostaddress*/analytics

### Domain modelling
The current domain model can be found in the docs directory.

### Rationale/improvements

The application currently renders a static view  that displays information as per the brief. In future iterations, should the Client decide to have a more sophisticated view, with more analytics available/dynamic content, it would probably be best to further separate the concerns by having a frontend that updates or modifies the view by interacting with the analytics backend. This would also improve efficiency as the HTML template would only be sent once, then updated with JSON data. This has a smaller payload than a full HTML page, but also there would be no need for re-rendering the DOM.  

Another point on efficiency; the application currently processes email data to generate analytics on demand, i.e. whenever a client requests the analytics page. With a rapidly increasing amount of data persisted, the computation/db access time will also increase, with a negative impact on server response time. A solution for this could be to introduce memoization: the analytics data could be cached and updated every time a new email event is received or -better- less often, which will make it readily available when required. This would trade-off memory for speed, and has the side-effect of potentially reducing the amount of processor cycles required. An example scenario for this would be when the analytics data is calculated+cached once a day but accessed more than once.  

With regards to security, the application currently allows any client to post data to the */email_event* route without authentication. This is because the server posting data currently used does not support authentication. However, using a real-world service such as Mandrill would make authentication possible. There is also a Mandrill gem that would allow easy integration.

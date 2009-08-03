# App Slice

App slices are a way to build private-label websites and deploy them to a particular server.

WARNING: App Slice is very immature. While its being used in production on certain applications, I do not recommend this for production use right out of the box. This code is also not well tested.

# Goals

The goal of the app slice gem is to:

 * Simplify the development of private label websites that are derived from a similar core application
 * Deploy the various private labels to their own servers (probably via Capistrano)
 
## Use Case

These are some commands that may be issued to run the application with 
various private labels:

    script/server --app whitelabel
    script/server # assumes core app
    rake whitelabel test
    rake test # assumes core, unless you specify otherwise
    cap whitelabel:production deploy
    cap core:production deploy

# License

    Copyright (c) 2009 Brad Gessler
    
    Permission is hereby granted, free of charge, to any person
    obtaining a copy of this software and associated documentation
    files (the "Software"), to deal in the Software without
    restriction, including without limitation the rights to use,
    copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the
    Software is furnished to do so, subject to the following
    conditions:
    
    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
    OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
    HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
    WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
    OTHER DEALINGS IN THE SOFTWARE.
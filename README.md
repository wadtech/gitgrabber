# Git Grabber

A simple github backup tool, for peace of mind.

## Usage

Add settings to config.json:

1. Generate a github personal token
2. Set an interval (min 60 seconds. Depending on your usage once or twice a day is probably enough, your mileage may vary.)
3. Set a backup directory where projects should be cloned/fetched.

Run the application `gitgrabber` from your command line (you can fork it to the background in bash with `gitgrabber &`) the application will log its progress so redirect to a file or `/dev/null` if you're not interested.

For issues, please use the issue tracker on the repository.

Pull requests welcome.

Copyright (c) 2014 Peter Mellett

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

# UCCQRGenerator
Extremely Lightweight QR Code Generator for Swift

Focused only on generatig a QR code to create fastest option available.

Installation
------------

1. Download the repository
2. Drag & Drop `UCCQRGenerator.swift` file to your Project Navigator
3. Enjoy!

Usage
-----

as simple as this:

```swift
// Put in a string, width (= height) and a correction level. You get a UIImage.
UCCQRGenerator.generateQR("http://www.google.com",200,UCCQRCorrectionLevel.Percent30)
```

What is a Correction Level?
---------------------------

Correction Level creates error correction codewords (bytes) based on the encoded data. A QR code reader can use these error correction bytes to determine if it did not read the data correctly, and the error correction codewords can be used to correct those errors.

There are four levels on `UCCQRCorrectionLevel`:

| Value        | aka. | Description          |
| ------------ | ---- | -------------------- |
| `Percent7`     | "L"  | Recovers 7% of data  |
| `Percent15`    | "M"  | Recovers 15% of data |
| `Percent25`    | "Q"  | Recovers 25% of data |
| `Percent30`    | "H"  | Recovers 30% of data |

Be aware higher levels of error correction require more bytes, so the higher the error correction level, the larger the QR code will have to be.

Credits
-------

UCCQRCorrectionLevel is created by [Ulas Can Cengiz](http://linkedin.com/in/ulascengiz) and sponsored by [ProGeek Software](http://progeek.co).

You can;

* send me an [e-mail](mailto:ulas@progeek.co),
* follow me on [Twitter](https://twitter.com/ulsc) or
* connect me on [LinkedIn](http://linkedin.com/in/ulascengiz)

##License

<pre>
The MIT License (MIT)

Copyright (c) 2013 Fuerte International

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
</pre>

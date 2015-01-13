# UCCQRGenerator
Lightweight QR Code Generator for Swift

Focused only on generatig a QR code to create fastest option available.

Usage
-----

as simple as this:

```swift
// Put in a string, width (= height) and a correction level. You get a UIImage.
UCCQRGenerator.generateQR("http://www.google.com",200,UCCQRCorrectionLevel.Percent30)
```

What is a Correction Level?
---------------------------

Correction Level creates error correction codewords (bytes) based on the encoded data. A QR code reader can use these error correction bytes to determine if it did not read the data correctly, and the error correction codewords can be used to correct those errors. There are four levels on UCCQRCorrectionLevel:

Percent7 - (aka. "L")	- Recovers 7% of data
Percent15	Recovers 15% of data
Percent25	Recovers 25% of data
Percent30	Recovers 30% of data

| Value        | aka. | Description          |
| ------------ | ---- | -------------------- |
| Percent7     | "L"  | Recovers 7% of data  |
| Percent15    | "M"  | Recovers 15% of data |
| Percent25    | "Q"  | Recovers 25% of data |
| Percent30    | "H"  | Recovers 30% of data |

Be aware higher levels of error correction require more bytes, so the higher the error correction level, the larger the QR code will have to be.

Credits
-------

UCCQRCorrectionLevel is created by [Ulas Can Cengiz](http://linkedin.com/in/ulascengiz) and sponsored by [ProGeek Software](http://progeek.co).

You can;

* send me an [e-mail](mailto:ulas@progeek.co),
* follow me on [Twitter](https://twitter.com/ulsc) or
* connect me on [LinkedIn](http://linkedin.com/in/ulascengiz)
